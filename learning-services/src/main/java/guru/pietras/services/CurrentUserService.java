package guru.pietras.services;

import guru.pietras.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.io.Serializable;

@Service
@Scope(value = "session", proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CurrentUserService implements Serializable {

	protected final Logger logger = LoggerFactory.getLogger(getClass());

	private static final long serialVersionUID = 4035838467423663349L;

	private User userDomainObject = null;

	@Autowired
	UserService userService;

	public String getLogin() {
		Object userObject = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return (userDomainObject != null) ? userDomainObject.getEmail()
				: (userObject instanceof org.springframework.security.core.userdetails.User) ? ((org.springframework.security.core.userdetails.User) userObject).getUsername() : "";
	}

	public User getUser() {
		if (userDomainObject == null) {
			String username = getLogin();
			logger.info("User is null, fetching user details for username {}", new Object[] {username});
			if (username != null) {
				userDomainObject = userService.findByEmailAndActiveTrue(username);
			}
		}
		return userDomainObject;
	}

	public void invalidateUserDetails() {
		userDomainObject = null;
	}

	public boolean isCurrentUser(Long userId) {
		return getUser().getId() == userId;
	}

}
