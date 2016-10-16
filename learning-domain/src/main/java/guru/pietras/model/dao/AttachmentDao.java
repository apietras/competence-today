package guru.pietras.model.dao;

import guru.pietras.Attachment;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface AttachmentDao extends CrudRepository <Attachment, Long>{

	List<Attachment> findByLessonId(Long lessonId);
	
}
