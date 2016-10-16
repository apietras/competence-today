package guru.pietras.learning.forms;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class AddCourseForm {
	 @NotEmpty
	 @Size(min=5)
	    private String name;

	    @NotEmpty
	    @Size(min=20, max=1000)
	    private String description;
	    
	    @NotEmpty
	    @Size(max=100)
	    private String learningPoints;
	    @NotNull
	    private Double price;
	    
	    @NotNull
	    private Double corporatePrice;

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		public Double getPrice() {
			return price;
		}

		public void setPrice(Double price) {
			this.price = price;
		}

		public Double getCorporatePrice() {
			return corporatePrice;
		}

		public void setCorporatePrice(Double corporatePrice) {
			this.corporatePrice = corporatePrice;
		}

		public String getLearningPoints() {
			return learningPoints;
		}

		public void setLearningPoints(String learningPoints) {
			this.learningPoints = learningPoints;
		}
}
