package guru.pietras;

import javax.persistence.*;

/**
 * Represents grades given to each course by users as an evaluation of the course.
 */
@Entity
public class Grade {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)

	private Long id;
	
	@ManyToOne
	private Course course;
	/**
	 * Value of grade given by user to course.
	 */
	private Integer value;
	@ManyToOne
	private User user;
	/**
	 * Testimonial to use by author.
	 */
	private String recommendation;
	/**
	 * General information about the quality of given course.
	 */
	private String generalFeelings;
	/**
	 * Strengths of the given course
	 */
	private String strengths;
	/**
	 * Points to improve by author.
	 */
	private String recommendedChanges;
	
	
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
	public Integer getValue() {
		return value;
	}
	public void setValue(Integer value) {
		this.value = value;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getRecommendation() {
		return recommendation;
	}
	public void setRecommendation(String recommendation) {
		this.recommendation = recommendation;
	}
	public String getGeneralFeelings() {
		return generalFeelings;
	}
	public void setGeneralFeelings(String generalFeelings) {
		this.generalFeelings = generalFeelings;
	}
	
	public String getRecommendedChanges() {
		return recommendedChanges;
	}
	public void setRecommendedChanges(String recommendedChanges) {
		this.recommendedChanges = recommendedChanges;
	}
	public String getStrengths() {
		return strengths;
	}
	public void setStrengths(String strengths) {
		this.strengths = strengths;
	}

}
