package guru.pietras.services;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

@Service
public class EmailService {

	protected final Logger logger = LoggerFactory.getLogger(getClass());

	@Value("${mail.smtp.auth}")
	protected String mailSmtpAuth;
	
	@Value("${mail.smtp.host}")
	protected String mailSmtpHost;
	
	@Value("${mail.smtp.port}")
	protected String mailSmtpPort;
	
	@Value("${mail.smtp.starttls.enable}")
	protected String mailSmtpStarttlsEnable;
	
	@Value("${mail.email.from}")
	protected String mailEmailFrom;
	
	@Value("${mail.username}")
	protected String username;
	
	@Value("${mail.password}")
	protected String password;
	
	public boolean sendTextEmail(String recipientEmail, String subject, String content) {
		
		logger.info("Sending email as {} to {} with subject {}", new Object[] {username, recipientEmail, subject});
		
		Properties props = new Properties();
		props.put("mail.smtp.auth", mailSmtpAuth);
		props.put("mail.smtp.starttls.enable", mailSmtpStarttlsEnable);
		props.put("mail.smtp.host", mailSmtpHost);
		props.put("mail.smtp.port", mailSmtpPort);
 
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
 
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(mailEmailFrom));
			message.setRecipients(Message.RecipientType.TO,	InternetAddress.parse(recipientEmail));
			message.setSubject(subject);
			message.setText(content);
 
			Transport.send(message);
			logger.info("Email was sent");
			return true;
		} catch (MessagingException e) {
			logger.error("Error sending email", e);
		}
		
		return false;
	}

}
