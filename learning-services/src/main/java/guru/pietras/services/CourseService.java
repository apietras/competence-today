package guru.pietras.services;

import guru.pietras.Course;
import guru.pietras.model.dao.CourseDao;
import guru.pietras.model.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Collections;
import java.util.List;

/**
 * This service implements functions connected with course.
 *
 */
@Service
public class CourseService extends AbstractService<Long, Course> {
	@Autowired
	private CourseDao repository;
	@Autowired
	private UserDao userRepository;

	/**
	 * Returns list of course for given user.
	 * 
	 * @param id
	 *            unique id
	 * @return TODO
	 */
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Course> getAllByUserId(Long id) {
		List<Course> courses = repository.findByEnrolledUserId(id);
		return (List<Course>) ((courses != null) ? courses : Collections
				.emptyList());
	}

	/**
	 * Enrolling user to course.
	 * 
	 * @param userId
	 *            unique id
	 * @param courseId
	 *            unique id
	 */

	public void enrollUser(Long userId, Long courseId) {
		repository.enrollUserForCourse(userId, courseId);
	}

	public List<Course> findAllByAuthorId(Long userId) {
		return repository.findAllByAuthorId(userId);
	}

	/**
	 * This method is used to obtain access to database operations. Implemented
	 * in child classes.
	 * 
	 * @return repository with database operations.
	 */
	@Override
	protected CrudRepository<Course, Long> getRepository() {

		return repository;
	}

	public List<Course> findCourses(String phrase) {
		phrase = "%" + phrase + "%";
		return repository.findByNameLikeOrOverviewLike(phrase, phrase);
	}
}
