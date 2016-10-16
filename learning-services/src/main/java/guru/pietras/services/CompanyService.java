package guru.pietras.services;

/**
 * This service implements functions connected with company.
 *
 */


import guru.pietras.Company;
import guru.pietras.model.dao.CompanyDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

@Service
public class CompanyService extends AbstractService<Long, Company> { 
	@Autowired
	private CompanyDao repository;
	/**
	 * This method returns repository for the type of object (it's required for
	 * abstract class).
	 */
	@Override
	protected CrudRepository<Company, Long> getRepository() {
		
		return repository;
	}

}
