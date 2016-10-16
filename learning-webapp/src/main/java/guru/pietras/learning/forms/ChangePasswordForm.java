package guru.pietras.learning.forms;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class ChangePasswordForm {
	

	@NotNull
	@Size(min = 6)
	private String password;

	@NotNull
	@Size(min = 6)
	private String newPassword;
	
	@NotNull
	@Size(min = 6)
	private String retypeNewPassword;

	@AssertTrue(message = "Wprowadzone hasła są różne.")
	public boolean isValid() {
		return this.password!=null && this.password.equals(this.retypeNewPassword);
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
