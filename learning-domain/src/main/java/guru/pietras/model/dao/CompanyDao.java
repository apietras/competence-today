package guru.pietras.model.dao;

import guru.pietras.Company;
import org.springframework.data.repository.CrudRepository;

public interface CompanyDao extends CrudRepository <Company, Long>{
	

}
