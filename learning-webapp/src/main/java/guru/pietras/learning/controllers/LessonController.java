package guru.pietras.learning.controllers;

import guru.pietras.Attachment;
import guru.pietras.Course;
import guru.pietras.Lesson;
import guru.pietras.learning.forms.AddLessonForm;
import guru.pietras.learning.forms.EditLessonForm;
import guru.pietras.services.AttachmentService;
import guru.pietras.services.CourseService;
import guru.pietras.services.LessonService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.time.LocalDateTime;
import java.util.UUID;

@Controller
@RequestMapping("/lesson")
public class LessonController extends AbstractController {
    @Autowired
    private CourseService courseService;
    @Autowired
    private LessonService lessonService;
    private Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    private AttachmentService attachmentsService;

    /**
     * This method displays the form to create new lesson.
     */
    @Secured("ROLE_USER")
    @RequestMapping(value = "/new/{id}", method = RequestMethod.GET)
    public String newLesson(@ModelAttribute("form") @Valid AddLessonForm form,
                            BindingResult result, @PathVariable("id") Long courseId) {
        Course course = courseService.getById(courseId);
        boolean author = this.isAuthor(course);
        if (!author) {
            return "redirect:/course/show";
        }
        return "lesson/new_lesson";
    }

    /**
     * This method displays details of newly created lesson.
     */
    @Secured("ROLE_USER")
    @RequestMapping(value = "/new/{id}", method = RequestMethod.POST)
    public String newLessonAction(
            @ModelAttribute("form") @Valid AddLessonForm form,
            BindingResult result, @PathVariable("id") Long courseId) {
        if (result.hasErrors()) {
            // data in form are not valid
            return "lesson/new_lesson";
        } else {
            // data in form are valid
            Lesson object = new Lesson();
            Course course = courseService.getById(courseId);
            boolean author = this.isAuthor(course);
            if (!author) {
                return "redirect:/course/show";
            }
            object.setCourse(course);
            object.setName(form.getName());
            object.setContent(form.getContent());
            object.setOrder(form.getOrder());
            object.setPublishDate(LocalDateTime.now());
            object = lessonService.create(object);

            return "redirect:/lesson/view/" + object.getId();
        }
    }

    /**
     * This method displays the form to edit exiting lesson.
     */
    @Secured("ROLE_USER")
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editLesson(Model model, @PathVariable("id") Long lessonId,
                             @Valid EditLessonForm form, BindingResult result) {
        Lesson object = lessonService.getById(lessonId);

        boolean author = this.isAuthor(object);
        if (!author) {
            return "redirect:/course/show";
        }

        form.setName(object.getName());
        form.setContent(object.getContent());
        form.setOrder(object.getOrder());
        model.addAttribute("form", form);
        model.addAttribute("lesson", object);
        model.addAttribute("attachments", attachmentsService.getByLessonId(lessonId));
        return "lesson/edit_lesson";
    }

    /**
     * This method handles the form and stores existing changes to database.
     */
    @Secured("ROLE_USER")
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String editLessonAction(@PathVariable("id") Long lessonId,
                                   @ModelAttribute("form") @Valid EditLessonForm form,
                                   BindingResult result, Model model) {
        Lesson object = lessonService.getById(lessonId);
        if (result.hasErrors()) {
            // data in form are not valid
            model.addAttribute("lesson", object);
            model.addAttribute("attachments", attachmentsService.getByLessonId(lessonId));
            return "lesson/edit_lesson";
        } else {
            // data in form are valid

            boolean author = this.isAuthor(object);
            if (!author) {
                return "redirect:/course/show";
            }

            object.setName(form.getName());
            object.setContent(form.getContent());
            object.setOrder(form.getOrder());
            object.setPublishDate(LocalDateTime.now());
            object = lessonService.create(object);

            return "redirect:/lesson/view/" + object.getId();
        }
    }

    @Secured("ROLE_USER")
    @RequestMapping(value = "/upload/attachment/{id}", method = RequestMethod.POST)
    public String handleFileUpload(@PathVariable("id") Long lessonId,
                                   @RequestParam("file") MultipartFile file) {
        if (!file.isEmpty()) {
            try {
                Lesson lesson = lessonService.getById(lessonId);
                UUID uuid = UUID.randomUUID();
                String filename = "/uploads/upload_" + uuid.toString();
                byte[] bytes = file.getBytes();
                File fsFile = new File(filename);
                fsFile.createNewFile();
                BufferedOutputStream stream =
                        new BufferedOutputStream(new FileOutputStream(fsFile));
                stream.write(bytes);
                stream.close();

                Attachment attachment = new Attachment();
                attachment.setAdress(filename);
                attachment.setName((file.getOriginalFilename().lastIndexOf('/') > -1) ? file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf('/') + 1) : file.getOriginalFilename());
                attachment.setSize(bytes.length);
                attachment.setLesson(lesson);
                attachmentsService.create(attachment);
                logger.info("File {} has been successfully uploaded as {}", new Object[]{file.getOriginalFilename(), filename});
            } catch (Exception e) {
                logger.error("File has not been uploaded", e);
            }
        } else {
            logger.error("Uploaded file is empty");
        }
        return "redirect:/lesson/edit/{id}";
    }

    /**
     * This method delete given lesson.
     */
    @Secured("ROLE_USER")
    @RequestMapping("/delete/{id}")
    public String deleteLesson(@PathVariable("id") Long lessonId, Model model) {
        Lesson object = lessonService.getById(lessonId);

        boolean author = this.isAuthor(object);
        if (!author) {
            return "redirect:/course/show";
        }

        lessonService.delete(lessonId);
        return "redirect:/course/detais/" + object.getCourse().getId();

    }

    protected boolean isAuthor(Lesson object) {
        return currentUserService.getUser().getId().equals(object.getCourse().getAuthor().getId());
    }

    /**
     * This method displays details of given lesson.
     */
    @Secured("ROLE_USER")
    @RequestMapping("/view/{id}")
    public String viewLesson(@PathVariable("id") Long lessonId, Model model) {
        Lesson object = lessonService.getById(lessonId);

        boolean enrolled = isEnrolledForCourse(object.getCourse().getId());
        if (!enrolled) {
            return "redirect:/course/show";

        }
        model.addAttribute("lesson", object);
        model.addAttribute("attachments", attachmentsService.getByLessonId(lessonId));
        return "lesson/view_lesson";
    }

}
