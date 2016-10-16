package guru.pietras.learning.controllers;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/company")
public class CompanyController {
	@RequestMapping("/manager")
	public String manageEmployees() {
		return "company/employees_management";
	}

	@RequestMapping("/add/employees")
	public String addEmployees() {
		return "company/add_employee";
	}

	@RequestMapping("/delete/{id}")
	public String deleteEmployee(@PathVariable("id") Long userId) {
		return "company/delete_employee";
	}

	@RequestMapping("/enroll/{id}")
	public String enrollEmployee(@PathVariable("id") Long userId) {
		return "company/manage_employee";
	}

	@RequestMapping("/employee_grades/{id}")
	public String employeeGrates(@PathVariable("id") Long userId) {
		return "company/empoloyee_grades";
	}
}
