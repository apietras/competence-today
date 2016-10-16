package guru.pietras;

import javax.persistence.*;
/**
 * Represents certificates which users get after finish course.
 */
@Entity
public class Certificate {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	@ManyToOne
	private Course course;
	@ManyToOne
	private User user;
	/**
	 * Information about the result of attending on given course.
	 */
	private String result;
	/**
	 * Unique number of certificate uses together with code to examine the authenticity. 
	 */
	private String number;
	/**
	 * Unique code of certificate uses together with number to examine the authenticity.
	 */
	private String code;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
}
