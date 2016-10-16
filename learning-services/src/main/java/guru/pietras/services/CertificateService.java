package guru.pietras.services;

import guru.pietras.Certificate;
import guru.pietras.model.dao.CertificateDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
/**
 * This service implements functions connected with certificate.
 *
 */
@Service
public class CertificateService extends AbstractService<Long,Certificate> {
	@Autowired
	private CertificateDao repository;
/**
 * This method checks the authenticity of certificate by validate the number and code.
 * @param number unique number
 * @param code unique code
 * @return certificate data
 */
	public Certificate getByNumberAndCode(String number, String code) {
		return  repository.findByNumberAndCode(number, code);
	}
	/**
	 * This method returns all certificates of given course.
	 * @param id unique id
	 * @return list of certificate by course id
	 */
	public List<Certificate> getAllByCourseId(Long id) {
		return repository.findByCourseId(id);
	}
	/**
	 * This method returns certificate of given user and given course.
	 * @param userId unique id
	 * @param courseId unique id
	 * @return certificate
	 */
	public Certificate getByUserIdAndCourseId(Long userId, Long courseId){
		return repository.findByUserIdAndCourseId(userId, courseId);
	}
	/**
	 * This method returns repository for the type of object (it's required for
	 * abstract class).
	 */
	@Override
	protected CertificateDao getRepository() {

		return repository;
	} 
}
