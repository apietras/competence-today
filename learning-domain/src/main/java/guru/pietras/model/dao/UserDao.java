package guru.pietras.model.dao;

import guru.pietras.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface UserDao extends CrudRepository <User, Long>{
	public List<User> findByCompanyId(Long id);
	public User findByEmail(String email);
	public User findByEmailAndActiveTrue(String email);
	//public List<User> findByCourseId(Long id);
	public List<User> findByAuthorTrue();
}
