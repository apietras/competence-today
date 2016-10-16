package guru.pietras.learning.forms;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class ResetPasswordForm {

	@NotNull
	@Size(min = 6, max=50)
	private String password;

	@NotNull
	@Size(min = 6, max=50)
	private String retypePassword;
	
	@AssertTrue(message = "Wprowadzone hasła są różne.")
	public boolean isValid() {
		return this.password !=null && this.password.equals(this.retypePassword);
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
	
}
