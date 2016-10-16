package guru.pietras.learning.controllers;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StaticController {
	/**
	 * This method displays homepage.
	 */
	@RequestMapping({"", "/", "/home"})
	public String showHomepage() {
		return "home";
	}
	/**
	 * This method displays about page.
	 */
		@RequestMapping("/about")
		public String showAboutPage() {
			return "about";
		}
}
