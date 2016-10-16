package guru.pietras.model.dao;

import guru.pietras.Certificate;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface CertificateDao extends CrudRepository <Certificate, Long>{
	public List<Certificate> findByUserId(Long id);
	public List<Certificate> findByCourseId(Long id);
	public Certificate findByNumberAndCode(String number, String code);
	public Certificate findByUserIdAndCourseId(Long userId, Long courseId);
}
