package guru.pietras.learning.controllers;

import guru.pietras.User;
import guru.pietras.learning.forms.*;
import guru.pietras.services.CurrentUserService;
import guru.pietras.services.EmailService;
import guru.pietras.services.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Formatter;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;

	@Autowired
	CurrentUserService currentUserService;

	@Autowired
	EmailService emailService;

	private Logger logger = LoggerFactory.getLogger(getClass());

	/**
	 * This method displays the form to sing up to the application.
	 */
	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String newCourse(@ModelAttribute("form") @Valid AddUserForm form,
			BindingResult result) {
		return "user/register";
	}

	/**
	 * This method displays details of newly created user.
	 */
	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String newUserAction(
			@ModelAttribute("form") @Valid AddUserForm form,
			BindingResult result) {
		if (result.hasErrors()) {
			// data in form are not valid
			return "user/register";
		} else {
			// data in form are valid
			User object = new User();
			object.setName(form.getName());
			object.setSurname(form.getSurname());
			object.setEmail(form.getEmail());
			object.setPassword(form.getPassword());
			object.setAuthor(form.getAuthor());
			object = userService.create(object);

			return "redirect:/user/edit/" + object.getId();
		}
	}

	/**
	 * This method displays the form to edit user data.
	 */
	@Secured("ROLE_USER")
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String editUser(@PathVariable("id") Long userId, Model model,
			@Valid EditUserForm form, BindingResult result) {
		User object = userService.getById(userId);
		if (!object.getId().equals(currentUserService.getUser().getId())) {
			return "redirect:/user/profile";

		}
		model.addAttribute("user", object);
		form.setName(object.getName());
		form.setSurname(object.getSurname());
		form.setEmail(object.getEmail());
		form.setAuthor(object.getAuthor());
		model.addAttribute("form", form);

		return "user/edit_profile";
	}

	/**
	 * This method handles the form and stores existing changes to database.
	 */
	@Secured("ROLE_USER")
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
	public String editUserAction(@PathVariable("id") Long userId, Model model,
			@ModelAttribute("form") @Valid EditUserForm form,
			BindingResult result) {
		User object = userService.getById(userId);
		if (!object.getId().equals(currentUserService.getUser().getId())) {
			return "redirect:/user/profile";

		}
		if (result.hasErrors()) {
			// data in form are not valid
			return "user/edit_profile";
		} else {
			// data in form are valid
			object.setName(form.getName());
			object.setSurname(form.getSurname());
			object.setEmail(form.getEmail());
			object.setAuthor(form.getAuthor());

			object = userService.update(object);

			return "redirect:/user/profile/" + object.getId();
		}
	}
	
	/**
	 * This method displays the course evaluation for author.
	 */
	@Secured("ROLE_USER")
	@RequestMapping("/evaluation/{id}")
	public String evaluation(@PathVariable("id") Long userId, Model model) {
		User object = userService.getById(userId);
		if (!object.getAuthor()) {
			return "redirect:/home";
		}
		object.getPublications().size();
		model.addAttribute("user", object);

		return "user/courses_evaluation";
	}
	/**
	 * This method displays the form to edit user biography.
	 */
	@Secured("ROLE_USER")
	@RequestMapping(value = "/bio/{id}", method = RequestMethod.GET)
	public String editBio(@PathVariable("id") Long userId, Model model,
			@Valid EditUserBioForm form, BindingResult result) {
		User object = userService.getById(userId);
		model.addAttribute("user", object);
		form.setDescription(object.getDescription());
		form.setExperience(object.getExperience());
		form.setPhoto(object.getPhoto());
		form.setLinkedin(object.getLinkedin());
		model.addAttribute("form", form);

		return "user/edit_bio";
	}

	/**
	 * This method handles the form and stores existing changes to database.
	 */
	@Secured("ROLE_USER")
	@RequestMapping(value = "/bio/{id}", method = RequestMethod.POST)
	public String editBioAction(@PathVariable("id") Long userId, Model model,
			@ModelAttribute("form") @Valid EditUserBioForm form,
			BindingResult result) {
		User object = userService.getById(userId);
		if (result.hasErrors()) {
			// data in form are not valid
			return "user/edit_bio";
		} else {
			// data in form are valid
			object.setDescription(form.getDescription());
			object.setExperience(form.getExperience());
			object.setPhoto(form.getPhoto());
			object.setLinkedin(form.getLinkedin());

			return "redirect:/user/bio/" + object.getId();
		}

	}

	@Secured("ROLE_USER")
	@RequestMapping("/profile")
	public String profileRedirect() {
		User object = currentUserService.getUser();
		return "redirect:/user/profile/" + object.getId();
	}

	@Secured("ROLE_USER")
	@RequestMapping("/profile/{id}")
	public String profile(@PathVariable("id") Long userId, Model model) {
		User object = userService.getById(userId);
		if (!object.getId().equals(currentUserService.getUser().getId())) {
			return "redirect:/user/profile";

		}
		object.getHistory().size();

		model.addAttribute("user", object);

		return "user/profile";
	}
	@Secured("ROLE_USER")
	@RequestMapping("/courses/{id}")
	public String editMyCourses(@PathVariable("id") Long userId, Model model) {
		User object = userService.getById(userId);
		if (!object.getId().equals(currentUserService.getUser().getId())) {
			return "redirect:/user/profile";

		}
		
		model.addAttribute("user", object);

		return "user/edit_courses";
	}

	@Secured("ROLE_USER")
	@RequestMapping("/public/{id}")
	public String publicProfile(@PathVariable("id") Long userId, Model model) {
		User object = userService.getById(userId);
		if (!object.getAuthor()) {
			return "redirect:/home";
		}
		object.getPublications().size();
		model.addAttribute("user", object);

		return "user/public";
	}

	@RequestMapping("/login")
	public String login(Model model,
			@RequestParam(value = "error", required = false) String error) {
		model.addAttribute("error", error);
		return "user/login";
	}

	@Secured("ROLE_USER")
	@RequestMapping("/delete")
	public String deleteProfile(@PathVariable("id") Long userId) {
		User object = userService.getById(userId);

		object.setActive(false);
		object = userService.update(object);

		return "redirect:/logout";
	}

	@Secured("ROLE_USER")
	@RequestMapping("/certificates/{id}")
	public String certificates(Model model, @PathVariable("id") Long userId) {
		User object = userService.getById(userId);
		object.getCertificates().size();

		model.addAttribute("user", object);
		return "user/certificates";
	}

	@Secured("ROLE_USER")
	@RequestMapping(value = "/change/password/{id}", method = RequestMethod.GET)
	public String changePassword(
			@ModelAttribute("form") ChangePasswordForm form) {
		return "user/change_password";
	}

	@Secured("ROLE_USER")
	@RequestMapping(value = "/change/password/{id}", method = RequestMethod.POST)
	public String changePasswordAction(@PathVariable("id") Long userId,
			Model model,
			@ModelAttribute("form") @Valid ChangePasswordForm form,
			BindingResult result) {
		User object = userService.getById(userId);
		if (!object.getPassword().equals(form.getPassword())) {
			ObjectError arg0 = new ObjectError("password",
					"Podane hasło jest błędne");
			result.addError(arg0);

		}
		if (result.hasErrors()) {
			// data in form are not valid
			return "user/change_password";
		} else {
			// data in form are valid
			object.setPassword(form.getNewPassword());
			object = userService.update(object);

			return "redirect:/user/edit/" + object.getId();
		}
	}

	@Secured("ROLE_USER")
	@RequestMapping("/payment")
	public String payment() {
		return "user/payment";
	}

	@Secured("ROLE_USER")
	@RequestMapping("/courses")
	public String enrolledCourses() {
		return "user/enrolled_courses";
	}

	@Secured("ROLE_USER")
	@RequestMapping("/transfer/balance")
	public String transferBalance() {
		return "redirect:";
	}

	@RequestMapping("/reset/{email}/{code}")
	public String resetPassword(Model model,
			@ModelAttribute("form") @Valid ResetPasswordForm form,
			BindingResult result, @PathVariable("email") String email,
			@PathVariable("code") String code) {
		User user = userService.findByEmail(email);
		if (user == null
				|| !sha1(user.getId() + user.getEmail() + user.getPassword())
						.equals(code)) {
			return "redirect:/user/forgot/password";
		}
		if (!result.hasErrors()) {
			user.setPassword(form.getPassword());
			userService.update(user);
			return "redirect:/user/login";
		}
		return "user/reset_password";
	}

	@RequestMapping(value = "/forgot/password", method = RequestMethod.GET)
	public String remindPassword(Model model, @Valid ForgotPasswordForm form,
			BindingResult result) {
		model.addAttribute("form", form);
		return "user/forgot_password";
	}

	@RequestMapping(value = "/forgot/password", method = RequestMethod.POST)
	public String remindPasswordAction(Model model,
			@ModelAttribute("form") @Valid ForgotPasswordForm form,
			BindingResult result) {
		if (result.hasErrors()) {
			return "user/forgot_password";
		} else {
			User user = userService.findByEmail(form.getEmail());
			if (user != null) {
				String code = sha1(user.getId() + user.getEmail()
						+ user.getPassword());
				emailService.sendTextEmail(user.getEmail(),
						"Resetowanie hasła",
						"Aby zresetować hasło, wejdź pod adres /user/reset/"
								+ user.getEmail() + "/" + code);
			}
			return "redirect:/user/login";
		}
	}

	private static String sha1(String input) {
		String sha1 = "";
		try {
			MessageDigest crypt = MessageDigest.getInstance("SHA-1");
			crypt.reset();
			crypt.update(input.getBytes("UTF-8"));
			sha1 = byteToHex(crypt.digest());
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return sha1;
	}

	private static String byteToHex(final byte[] hash) {
		Formatter formatter = new Formatter();
		for (byte b : hash) {
			formatter.format("%02x", b);
		}
		String result = formatter.toString();
		formatter.close();
		return result;
	}
}