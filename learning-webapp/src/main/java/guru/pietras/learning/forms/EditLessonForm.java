package guru.pietras.learning.forms;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class EditLessonForm {
	 @NotEmpty
	 @Size(min=5)
	    private String name;

	    @NotEmpty
	    @Size(min=20)
	    private String content;
	    
	    @NotNull
	    private Integer order;

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getContent() {
			return content;
		}

		public void setContent(String content) {
			this.content = content;
		}

		public Integer getOrder() {
			return order;
		}

		public void setOrder(Integer order) {
			this.order = order;
		}

		
}

