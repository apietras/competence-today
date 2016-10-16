package guru.pietras;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.List;
/**
 * Represents single lessons and contains content of each course.
 *
 */
@Entity
public class Lesson {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	private String name;
	@ManyToOne
	private Course course;
	/**
	 * Number given to sort lessons in correct order.
	 */
	private Integer order;
	/**
	 * Content of this lesson.
	 */
	private String content;
	/**
	 * Files uploaded with this lesson.
	 */
	@OneToMany(mappedBy="lesson")
	private List<Attachment> attachments;
	private LocalDateTime publishDate;
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
	public Integer getOrder() {
		return order;
	}
	public void setOrder(Integer order) {
		this.order = order;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public List<Attachment> getAttachments() {
		return attachments;
	}
	public void setAttachments(List<Attachment> attachments) {
		this.attachments = attachments;
	}
	public LocalDateTime getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(LocalDateTime publishDate) {
		this.publishDate = publishDate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

}
