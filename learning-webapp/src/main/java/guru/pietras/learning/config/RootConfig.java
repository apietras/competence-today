package guru.pietras.learning.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

/**
 * Created by aniapietras on 16.10.2016.
 */

@Configuration
@ImportResource("classpath:/securityContext.xml")
public class RootConfig {
}
