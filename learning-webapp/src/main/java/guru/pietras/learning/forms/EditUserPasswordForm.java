package guru.pietras.learning.forms;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;



public class EditUserPasswordForm {
	@NotNull
	@Size(min = 6, max=50)
	private String password;

	@NotNull
	@Size(min = 6, max=50)
	private String newPassword;
	@NotNull
	@Size(min = 6, max=50)
	private String retypeNewPassword;
	

	@AssertTrue(message = "Wprowadzone hasła są różne.")
	public boolean isValid() {
		return this.newPassword !=null && this.newPassword.equals(this.retypeNewPassword);
	}


	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public String getNewPassword() {
		return newPassword;
	}


	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}


	public String getRetypeNewPassword() {
		return retypeNewPassword;
	}


	public void setRetypeNewPassword(String retypeNewPassword) {
		this.retypeNewPassword = retypeNewPassword;
	}


	
}