package guru.pietras.learning.controllers;

import guru.pietras.Course;
import guru.pietras.services.CourseService;
import guru.pietras.services.CurrentUserService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class AbstractController {
	@Autowired protected CourseService courseService;
	@Autowired protected CurrentUserService currentUserService;
	public AbstractController() {
		super();
	}

	protected boolean isEnrolledForCourse(Long courseId) {
		List<Course> courses = courseService.getAllByUserId(currentUserService.getUser().getId());
		boolean enrolled = false;
		for (Course course : courses) {
			if (course.getId().equals(courseId)) {
				enrolled = true;
			}
		}
		return enrolled;
	}
	protected boolean isAuthor(Course object) {
		return currentUserService.getUser().getId().equals(object.getAuthor().getId());
	}
}