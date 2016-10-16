package guru.pietras.learning.controllers;

import guru.pietras.Course;
import guru.pietras.Grade;
import guru.pietras.User;
import guru.pietras.learning.forms.AddCourseForm;
import guru.pietras.learning.forms.EditCourseForm;
import guru.pietras.learning.forms.EvaluateCourseForm;
import guru.pietras.services.GradeService;
import guru.pietras.services.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.transaction.Transactional;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/course")
public class CourseController extends AbstractController {

	private Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private GradeService gradeService;
	@Autowired
	private UserService userService;

	/**
	 * This method displays the form to create new course.
	 */
	@Secured("ROLE_USER")
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String newCourse(@ModelAttribute("form") @Valid AddCourseForm form,
			BindingResult result) {
		if (!currentUserService.getUser().getAuthor()) {
			return "redirect:/course/show";
		}
		return "course/new_course";
	}

	/**
	 * This method displays details of newly created course.
	 */
	@Secured("ROLE_USER")
	@RequestMapping(value = "/new", method = RequestMethod.POST)
	public String newCourseAction(
			@ModelAttribute("form") @Valid AddCourseForm form,
			BindingResult result) {
		if (!currentUserService.getUser().getAuthor()) {
			return "redirect:/course/show";
		}
		if (result.hasErrors()) {
			// data in form are not valid
			return "course/new_course";
		} else {
			// data in form are valid
			Course object = new Course();

			object.setName(form.getName());
			object.setOverview(form.getDescription());
			object.setLearningPoints(form.getLearningPoints());
			object.setFee(1.0);
			object.setPrice(form.getPrice());
			object.setCorporatePrice(form.getCorporatePrice());
			object = courseService.create(object);

			return "redirect:/course/details/" + object.getId();
		}
	}

	/**
	 * This method displays the form to edit exiting course.
	 */
	@Secured("ROLE_USER")
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String editCourse(@PathVariable("id") Long courseId, Model model,
			@Valid EditCourseForm form, BindingResult result) {
		Course object = courseService.getById(courseId);
		model.addAttribute("course", object);
		form.setName(object.getName());
		form.setDescription(object.getOverview());
		form.setLearningPoints(object.getLearningPoints());
		form.setPrice(object.getPrice());
		form.setCorporatePrice(object.getCorporatePrice());

		model.addAttribute("form", form);

		return "course/edit_course";
	}

	/**
	 * This method handles the form and stores existing changes to database.
	 */
	@Secured("ROLE_USER")
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
	public String editCourseAction(@PathVariable("id") Long courseId,
			Model model, @ModelAttribute("form") @Valid EditCourseForm form,
			BindingResult result) {
		Course object = courseService.getById(courseId);
		model.addAttribute("course", object);

		if (result.hasErrors()) {
			// data in form are not valid
			return "course/edit_course";
		} else {
			// data in form are valid
			object.setName(form.getName());
			object.setOverview(form.getDescription());
			object.setLearningPoints(form.getLearningPoints());
			object.setFee(1.0);
			object.setPrice(form.getPrice());
			object.setCorporatePrice(form.getCorporatePrice());
			object = courseService.update(object);

			return "redirect:/course/details/" + object.getId();
		}
	}

	/**
	 * This method displays details of given course.
	 */
	@Transactional
	@Secured("ROLE_USER")
	@RequestMapping("/details/{id}")
	public String courseDetails(@PathVariable("id") Long courseId, Model model) {
		Course object = courseService.getById(courseId);
		model.addAttribute("course", object);

		boolean enrolled = isEnrolledForCourse(courseId);

		model.addAttribute("enrolled", enrolled);
		return "course/course_details";
	}

	/**
	 * This method delete the given course.
	 */
	@Secured("ROLE_USER")
	@RequestMapping("/delete/{id}")
	public String deleteCourse(@PathVariable("id") Long courseId, Model model) {
		courseService.delete(courseId);
		return "redirect:/course/show";
	}

	/**
	 * This method enroll user to given course.
	 */
	@Secured("ROLE_USER")
	@RequestMapping("/enroll/{id}")
	public String enrollCourse(@PathVariable("id") Long courseId) {
		courseService
				.enrollUser(currentUserService.getUser().getId(), courseId);
		return "redirect:/course/details/{id}";
	}

	/**
	 * This method displays all courses.
	 */

	@RequestMapping("/show")
	public String showCourses(Model model) {
		List<Course> object = courseService.getAll();
		model.addAttribute("courses", object);

		return "course/show_courses";
	}

	/**
	 * This method displays all authors.
	 */

	@RequestMapping("/authors")
	public String showAuthors(Model model) {
		List<User> object = userService.getAllAuthors();
		model.addAttribute("authors", object);

		return "course/show_authors";
	}

	/**
	 * This method displays unique evaluation details of given course.
	 */
	@Secured("ROLE_USER")
	@RequestMapping(value = "/evaluation/details/{gradeId}")
	public String showEvaluation(@PathVariable("id") Long gradeId, Model model) {
		Grade grade = gradeService.getById(gradeId);
		model.addAttribute("grade", grade);
		

		return "course/feedback";
	}
	/**
	 * This method displays the course evaluation form.
	 */
	@Secured("ROLE_USER")
	@RequestMapping(value = "/evaluate/{id}", method = RequestMethod.GET)
	public String evaluateCourse(@PathVariable("id") Long courseId,
			Model model, @Valid EvaluateCourseForm form, BindingResult result) {
		Course object = courseService.getById(courseId);
		boolean enrolled = isEnrolledForCourse(courseId);
		if (!enrolled) {
			return "redirect:/course/show";
		}
		model.addAttribute("course", object);
		model.addAttribute("form", form);

		return "course/course_evaluation";
	}

	@Secured("ROLE_USER")
	@RequestMapping(value = "/evaluate/{id}", method = RequestMethod.POST)
	public String evaluateCourseAction(@PathVariable("id") Long courseId,
			Model model,
			@ModelAttribute("form") @Valid EvaluateCourseForm form,
			BindingResult result) {
		Course course = courseService.getById(courseId);

		if (result.hasErrors()) {
			// data in form are not valid
			model.addAttribute("course", course);
			return "course/course_evaluation";
		} else {
			// data in form are valid
			Grade object = new Grade();
			object.setCourse(course);
			object.setValue(form.getValue());
			object.setRecommendation(form.getRecommendation());
			object.setGeneralFeelings(form.getGeneralFeelings());
			object.setStrengths(form.getStrengths());
			object.setRecommendedChanges(form.getRecommendedChanges());
			object = gradeService.create(object);

			Double averageGrade = 0.0;
			List<Grade> grades = gradeService.getAllByCourseId(courseId);
			for (Grade grade : grades) {
				averageGrade += grade.getValue().doubleValue();
			}
			averageGrade = averageGrade / (double) grades.size();
			course = courseService.getById(courseId);
			course.setAverageGrade(averageGrade);
			courseService.update(course);

			return "redirect:/course/details/" + object.getId();
		}

	}
}
