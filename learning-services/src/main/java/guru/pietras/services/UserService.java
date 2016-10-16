package guru.pietras.services;

import guru.pietras.User;
import guru.pietras.model.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * This service implements functions connected with user.
 *
 */
@Service
public class UserService extends AbstractService<Long, User> {
	
	 @Autowired
	  private PasswordEncoder passwordEncoder;
	 
	 
	@Autowired
	UserDao repository;

	/**
	 * This method returns all users of given company by this company id.
	 * 
	 * @param id
	 *            unique id
	 * @return list of users for given company.
	 */
	public List<User> getAllByCompanyId(Long id) {
		return (List<User>) repository.findByCompanyId(id);
	}

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
	 * This method returns a user based on his email address
	 * 
	 * @param email
	 *            email address to look for
	 * @return user with given email address
	 */
	public User findByEmail(String email) {
		return repository.findByEmail(email);
	}

	public User findByEmailAndActiveTrue(String email) {
		return repository.findByEmailAndActiveTrue(email);
	}
	
	public List<User>getAllAuthors() {
		return repository.findByAuthorTrue();
	}

	/**
	 * This method returns repository for the type of object (it's required for
	 * abstract class).
	 */
	@Override
	protected UserDao getRepository() {

		return repository;
	}

	@Override
	public User create(User object) {
		object.setPassword(passwordEncoder.encode(object.getPassword()));

		return super.create(object);
	}
}
