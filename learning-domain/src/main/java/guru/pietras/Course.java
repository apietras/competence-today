package guru.pietras;

import javax.persistence.*;
import java.util.List;

/**
 * Course consist of many lessons written by author. Access to course is paid.
 * Users evaluate courses by giving them grades. Users get certificates for
 * accomplishment course.
 */
@Entity
public class Course {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	private String name;
	@ManyToOne(optional=true)
	private User author;
	@OneToMany(mappedBy = "course", fetch=FetchType.EAGER)
	private List<Lesson> lessons;
	@ManyToMany
	private List<User> users;
	@OneToMany(mappedBy = "course")
	private List<Certificate> certificates;
	@OneToMany(mappedBy = "course", fetch=FetchType.EAGER)
	private List<Grade> grades;
	private String overview;
	/**
	 * Learning points describes what users will learn thanks to given course in bullets
	 */
	private String learningPoints;
	/**
	 * Price pays by single user.
	 */
	private Double price;
	/**
	 * Price pays by company for all company users' access.
	 */
	private Double corporatePrice;
	/**
	 * Percentage of the sales (profit) for the author of given course.
	 */
	private Double fee;
	/**
	 * List of companies enrolled to given course.
	 */
	@ManyToMany
	private List<Company> companies;
	
	private Double averageGrade;

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

	public User getAuthor() {
		return author;
	}

	public void setAuthor(User author) {
		this.author = author;
	}

	public List<Lesson> getLessons() {
		return lessons;
	}

	public void setLessons(List<Lesson> lessons) {
		this.lessons = lessons;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public List<Certificate> getCertificates() {
		return certificates;
	}

	public void setCertificates(List<Certificate> certificates) {
		this.certificates = certificates;
	}

	public List<Grade> getGrades() {
		return grades;
	}

	public void setGrades(List<Grade> grades) {
		this.grades = grades;
	}

	public String getOverview() {
		return overview;
	}

	public void setOverview(String overview) {
		this.overview = overview;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getCorporatePrice() {
		return corporatePrice;
	}

	public void setCorporatePrice(Double corporatePrice) {
		this.corporatePrice = corporatePrice;
	}

	public Double getFee() {
		return fee;
	}

	public void setFee(Double fee) {
		this.fee = fee;
	}

	public List<Company> getCompanies() {
		return companies;
	}

	public void setCompanies(List<Company> companies) {
		this.companies = companies;
	}

	public String getLearningPoints() {
		return learningPoints;
	}

	public void setLearningPoints(String learningPoints) {
		this.learningPoints = learningPoints;
	}

	public Double getAverageGrade() {
		return averageGrade;
	}

	public void setAverageGrade(Double averageGrade) {
		this.averageGrade = averageGrade;
	}

}
