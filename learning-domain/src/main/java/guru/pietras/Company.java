package guru.pietras;

import javax.persistence.*;
import java.util.List;
/**
 * Represents company of each user (is not require to be a corporate user). It allows to do mass actions which company users.
 */
@Entity
public class Company {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	private String name;
	private String adress;
	private String vatId;
	private String email;
	private String password;
	/**
	 * List of company users.
	 */
	@OneToMany(mappedBy="company")
	private List<User> employees;
	/**
	 * List of courses available for given company.
	 */
	@ManyToMany(mappedBy="companies")
	private List<Course> availableCourses;
	/**
	 *Funds remains on company account for utilizing on next course enrolling.
	 */
	private Double balance;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public String getVatId() {
		return vatId;
	}
	public void setVatId(String vatId) {
		this.vatId = vatId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public List<User> getEmployees() {
		return employees;
	}
	public void setEmployees(List<User> employees) {
		this.employees = employees;
	}
	public List<Course> getAvailableCourses() {
		return availableCourses;
	}
	public void setAvailableCourses(List<Course> availableCourses) {
		this.availableCourses = availableCourses;
	}
	public Double getBalance() {
		return balance;
	}
	public void setBalance(Double balance) {
		this.balance = balance;
	}

}
