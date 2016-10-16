package guru.pietras.learning.forms;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.URL;

import javax.validation.constraints.Size;

public class EditUserBioForm {
	 @NotEmpty
	 @Size(min=200)
	    private String description;
	 
	 @NotEmpty
	 @Size(min=200)
	    private String experience;
	 
	 
	 @URL
	    private String linkedin;
	 
	 
	 @URL
	    private String photo;
	 
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	


	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getLinkedin() {
		return linkedin;
	}

	public void setLinkedin(String linkedin) {
		this.linkedin = linkedin;
	}
}

	    