package guru.pietras.model.dao;

import guru.pietras.Lesson;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface LessonDao extends CrudRepository <Lesson, Long>{
	public List<Lesson> findByCourseId(long id);
}
