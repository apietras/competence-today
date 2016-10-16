package guru.pietras.learning.forms;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;

public class EvaluateCourseForm {
	@NotNull
	private Integer value;
	@NotEmpty
	private  String recommendation;
	@NotEmpty
	private  String generalFeelings;
	@NotEmpty
	private  String strengths;
	@NotEmpty
	private  String recommendedChanges;
	public Integer getValue() {
		return value;
	}
	public void setValue(Integer value) {
		this.value = value;
	}
	public String getRecommendation() {
		return recommendation;
	}
	public void setRecommendation(String recommendation) {
		this.recommendation = recommendation;
	}
	public String getGeneralFeelings() {
		return generalFeelings;
	}
	public void setGeneralFeelings(String generalFeelings) {
		this.generalFeelings = generalFeelings;
	}
	public String getStrengths() {
		return strengths;
	}
	public void setStrengths(String strengths) {
		this.strengths = strengths;
	}
	public String getRecommendedChanges() {
		return recommendedChanges;
	}
	public void setRecommendedChanges(String recommendedChanges) {
		this.recommendedChanges = recommendedChanges;
	}
	
}
