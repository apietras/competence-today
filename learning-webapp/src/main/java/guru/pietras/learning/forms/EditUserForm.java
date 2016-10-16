package guru.pietras.learning.forms;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class EditUserForm {
	@NotEmpty
	@Size(min = 2)
	private String name;

	@NotEmpty
	@Size(min = 2)
	private String surname;

	@NotNull
	@Email
	private String email;
	
	@NotNull
	private String company;


	private Boolean author;


	

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

	

	

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public Boolean getAuthor() {
		return author;
	}

	public void setAuthor(Boolean author) {
		this.author = author;
	}

}
