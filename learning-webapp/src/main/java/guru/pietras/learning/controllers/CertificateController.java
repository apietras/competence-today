package guru.pietras.learning.controllers;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/certificate")
public class CertificateController {
	@RequestMapping("/generate/{userId}/{courseId}")
	public String generateCertificate(@PathVariable("userId") Long userId,
			@PathVariable("courseId") Long courseId) {
		return "certificate/generate_certificate";
	}

	@RequestMapping("/generate/{id}")
	public String downloadCertificate(@PathVariable("id") Long certificateId) {
		return "certificate/download_certificate";
	}

	@RequestMapping("/validate/{number}/{code}")
	public String validateCertificate(@PathVariable("number") String number,
			@PathVariable("code") String code) {
		return "certificates/validate_certificates";
	}
}