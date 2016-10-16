package guru.pietras.model.dao;

import guru.pietras.Course;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public interface CourseDao extends CrudRepository <Course, Long>{
	public List<Course> findAllByAuthorId(Long id);
	public List<Course> findByNameLikeOrOverviewLike(String name, String overview);
	
	@Query("SELECT u.history FROM User u WHERE u.id = :id")
	public List<Course> findByEnrolledUserId(@Param("id") Long id);
	
	@Modifying
	@Transactional
	@Query(value = "INSERT INTO Course_User (history_id, users_id) VALUES (:courseId, :userId)", nativeQuery = true)
	public void enrollUserForCourse(@Param("userId")Long userId, @Param("courseId")Long courseId);
	
}