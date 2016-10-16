package guru.pietras.services;

import org.springframework.data.repository.CrudRepository;

import java.io.Serializable;
import java.util.List;

/**
 * Common functionality for all services.
 * 
 * @param <K>
 *            Represents the type of id field of given class.
 * @param <T>
 *            Represents the type of given class.
 */

public abstract class AbstractService<K extends Serializable, T> {

	/**
	 * This method returns one object by its unique id.
	 * 
	 * @param id
	 *            unique id
	 * @return object with given id.
	 */
	public T getById(K id) {
		return getRepository().findOne(id);
	}

	/**
	 * This method retrieves all object from database.
	 * 
	 * @return list of objects.
	 */
	public List<T> getAll() {
		return (List<T>) getRepository().findAll();
	}

	/**
	 * This method updates existing record.
	 * 
	 * @param object
	 *           object to be updated
	 * @return updated object.
	 */
	public T update(T object) {
		return getRepository().save(object);
	}

	/**
	 * This method creates new object in database.
	 * 
	 * @param object
	 *           object to be created
	 * @return created object.
	 */

	public T create(T object) {
		return getRepository().save(object);
	}

	/**
	 * This method deletes records by its unique id.
	 * 
	 * @param id
	 *            unique id
	 */
	public void delete(K id) {
		getRepository().delete(id);
	}
/**
 * This method is used to obtain access to database operations. Implemented in child classes.
 * @return repository with database operations.
 */
	protected abstract CrudRepository<T, K> getRepository();

}