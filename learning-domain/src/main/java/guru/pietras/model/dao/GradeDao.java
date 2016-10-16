package guru.pietras.model.dao;

import guru.pietras.Grade;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface GradeDao extends CrudRepository <Grade, Long>{
public List<Grade> findByUserId(Long id);
public List<Grade> findByCourseId(Long id);
}
