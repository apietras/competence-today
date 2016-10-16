package guru.pietras.learning.forms;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class AddUserForm {
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
	@Size(min = 6, max=50)
	private String password;

	@NotNull
	@Size(min = 6, max=50)
	private String retypePassword;
	
	private Boolean author;

	@AssertTrue(message = "Wprowadzone hasła są różne.")
	public boolean isValid() {
		return this.password !=null && this.password.equals(this.retypePassword);
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

	public String getRetypePassword() {
		return retypePassword;
	}

	public void setRetypePassword(String retypePassword) {
		this.retypePassword = retypePassword;
	}

	public Boolean getAuthor() {
		return author;
	}

	public void setAuthor(Boolean author) {
		this.author = author;
	}

}
