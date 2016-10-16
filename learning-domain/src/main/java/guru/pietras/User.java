package guru.pietras;

import javax.persistence.*;
import java.util.List;

/**
 * Represents users of system, both author and learner.
 */
@Entity
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)

	private Long id;
	private String name;
	private String surname;
	private String email;
	private String password;

	@ManyToOne
	private Company company;
	/**
	 * Funds remains on user's account for utilizing on next course enrolling.
	 */
	private Double balance;
	/**
	 * History is all courses that user is enrolled to.
	 */
	@ManyToMany(mappedBy = "users", fetch=FetchType.EAGER)
	private List<Course> history;
	/**
	 * All courses that the user is author of.
	 */
	@OneToMany(mappedBy = "author", fetch=FetchType.EAGER)
	private List<Course> publications;
	/**
	 * List of all grades which user left as a evaluation of quality of attended courses.
	 */
	@OneToMany(mappedBy = "user")
	private List<Grade> grades;
	/**
	 * Short description of user, especially for authors.
	 */
	private String description;
	/**
	 * Short info about education and experience of user.
	 */
	private String experience;
	/**
	 * URL of Linkedin profile.
	 */
	private String linkedin;
	/**
	 * URL of photo.
	 */
	private String photo;

	/**
	 * User, who recommended service to this user.
	 */
	@ManyToOne
	private User refferal;
	@OneToMany(mappedBy = "refferal")
	/**
	 * Users recommended by this user.
	 */
	private List<User> recommendedUsers;
	/**
	 * Marks user as author of courses or not.
	 */
	private Boolean author;
	@OneToMany(mappedBy="user", fetch=FetchType.EAGER)
	private List<Certificate> certificates;
	/**
	 *Indicator whether user account is active or not.
	 */
	private Boolean active = true;
	

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

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
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

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public Double getBalance() {
		return balance;
	}

	public void setBalance(Double balance) {
		this.balance = balance;
	}

	public List<Course> getHistory() {
		return history;
	}

	public void setHistory(List<Course> history) {
		this.history = history;
	}

	public List<Grade> getGrades() {
		return grades;
	}

	public void setGrades(List<Grade> grades) {
		this.grades = grades;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public User getRefferal() {
		return refferal;
	}

	public void setRefferal(User refferal) {
		this.refferal = refferal;
	}

	public List<User> getRecommendedUsers() {
		return recommendedUsers;
	}

	public void setRecommendedUsers(List<User> recommendedUsers) {
		this.recommendedUsers = recommendedUsers;
	}

	public Boolean getAuthor() {
		return author;
	}

	public void setAuthor(Boolean author) {
		this.author = author;
	}

	public List<Certificate> getCertificates() {
		return certificates;
	}

	public void setCertificates(List<Certificate> certificates) {
		this.certificates = certificates;
	}

	

	public Boolean getActive() {
		return active;
	}

	public void setActive(Boolean active) {
		this.active = active;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getLinkedin() {
		return linkedin;
	}

	public void setLinkedin(String linkedin) {
		this.linkedin = linkedin;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public List<Course> getPublications() {
		return publications;
	}

	public void setPublications(List<Course> publications) {
		this.publications = publications;
	}
}
