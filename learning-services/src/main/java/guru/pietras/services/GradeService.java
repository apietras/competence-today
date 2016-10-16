package guru.pietras.services;

import guru.pietras.Grade;
import guru.pietras.model.dao.GradeDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import java.util.List;
/**
 * This service implements functions connected with grade.
 *
 */
@Service
public class GradeService extends AbstractService<Long, Grade> {

	@Autowired
	private GradeDao repository;
	@Autowired
	private Grade grade;
/**
 * This method returns all grades of given course by course id.
 * @param id unique id
 * @return TODO
 */
	public List<Grade> getAllByCourseId(Long id) {
		return null;
	}
	
	/**
	 * This method returns all grade of given user by user id.
	 * @param id unique id
	 * @return list of grades by user id
	 */
	public List<Grade> getAllByUserId(Long id) {
		return (List<Grade>) repository.findByUserId(id);
	}
	/**
	 * This method returns repository for the type of object (it's required for
	 * abstract class).
	 */
	@Override
	protected CrudRepository<Grade, Long> getRepository() {
				return repository;
	}
}
