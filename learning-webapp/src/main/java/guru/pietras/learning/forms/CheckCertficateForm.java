package guru.pietras.learning.forms;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Size;

public class CheckCertficateForm {
	 @NotEmpty
	 @Size(min=8, max=8)
	    private String number;

	    @NotEmpty
	    @Size(min=8, max=8)
	    private String code;

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
	    
	   
}
