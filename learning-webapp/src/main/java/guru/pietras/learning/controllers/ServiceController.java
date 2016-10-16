package guru.pietras.learning.controllers;

import guru.pietras.learning.forms.ContactForm;
import guru.pietras.services.CourseService;
import guru.pietras.services.CurrentUserService;
import guru.pietras.services.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

@Controller
@RequestMapping("/service")
public class ServiceController {
	@Autowired
	protected CourseService courseService;
	
	@Autowired
	protected EmailService emailService;

	@Autowired
	protected CurrentUserService currentUserService;
	
	/**
	 * This method displays the form to contact with service.
	 */
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contactService(@ModelAttribute("form") ContactForm form) {
		return "services/contact";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.POST)
	public String contactServiceAction(
			@ModelAttribute("form") @Valid ContactForm form,
			BindingResult result) {
		if (result.hasErrors()) {
			// data in form are not valid
			return "services/contact";
		} else {
			// data in form are valid
			emailService.sendTextEmail("ania@kobietydokodu.pl", "Kontakt ze strony: "+form.getSubject(), "Od: " + form.getEmail() + "\n\nTreść: " + form.getMessage());

			return "redirect:/service/contact";
		}
	}
	@RequestMapping(value="/search", method=RequestMethod.POST)
	public String search(Model model, @RequestParam("phrase")String phrase){
		model.addAttribute("phrase", phrase);
		model.addAttribute("courses", courseService.findCourses(phrase));
	return "services/search";
	}
	
	@RequestMapping("/404")
	public String errorNotFound(){
		return "404";
		
	
	
	}
}
