package guru.pietras.services;

import guru.pietras.Lesson;
import guru.pietras.User;
import guru.pietras.model.dao.LessonDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * This service implements functions connected with lesson.
 *
 */
@Service
public class LessonService extends AbstractService<Long, Lesson> {
	@Autowired
	private LessonDao repository;
	/**
	 * This method returns all users of given course by this course id.
	 * 
	 * @param id
	 *            unique id
	 * @return list of users for given course.
	 */
	public List<User> getAllByCourseId(Long id) {
		return null;
	}
	/**
	 * This method returns repository for the type of object (it's required for
	 * abstract class).
	 */
	@Override
	protected CrudRepository<Lesson, Long> getRepository() {
		
		return repository;
	}
}
