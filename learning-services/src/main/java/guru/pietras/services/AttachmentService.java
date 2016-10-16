package guru.pietras.services;

import guru.pietras.Attachment;
import guru.pietras.model.dao.AttachmentDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import java.util.List;
/**
 * This service implements functions connected with attachment.
 *
 */
@Service
public class AttachmentService extends AbstractService<Long, Attachment> {
	@Autowired
	private AttachmentDao repository;
	/**
	 * This method returns repository for the type of object (it's required for
	 * abstract class).
	 */
	@Override
	protected CrudRepository<Attachment, Long> getRepository() {

		return repository;
	}
	
	public List<Attachment> getByLessonId(Long lessonId) {
		return repository.findByLessonId(lessonId);
	}

}
