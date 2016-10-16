package guru.pietras.learning.config;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import java.util.Locale;

/**
 * Created by aniapietras on 16.10.2016.
 */

@Configuration
@EnableWebMvc
@ComponentScan("guru.pietras")
@PropertySource("classpath:config.properties")
public class ApplicationConfig extends WebMvcConfigurerAdapter {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry
                .addResourceHandler("/resources/**")
                .addResourceLocations("(/resources/");
        registry
                .addResourceHandler("/ckeditor/**")
                .addResourceLocations("(/ckeditor/");
        registry
                .addResourceHandler("/assets/**")
                .addResourceLocations("(/assets/");
        registry
                .addResourceHandler("/check_radio/**")
                .addResourceLocations("(/check_radio/");
        registry
                .addResourceHandler("/css/**")
                .addResourceLocations("(/css/");
        registry
                .addResourceHandler("/fontello/**")
                .addResourceLocations("(/fontello/");
        registry
                .addResourceHandler("/img/**")
                .addResourceLocations("(/img/");
        registry
                .addResourceHandler("/js/**")
                .addResourceLocations("(/js/");
        registry
                .addResourceHandler("/rs-plugin/**")
                .addResourceLocations("(/rs-plugin/");
        registry
                .addResourceHandler("/sliderimages/**")
                .addResourceLocations("(/plugin/");
    }

    @Bean
    public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer() {
        return new PropertySourcesPlaceholderConfigurer();
    }

    @Bean
    public MessageSource messageSource() {
        ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
        messageSource.setBasename("messages");
        return messageSource;
    }

    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver internalResourceViewResolver = new InternalResourceViewResolver();
        internalResourceViewResolver.setPrefix("WEB-INF/views/");
        internalResourceViewResolver.setSuffix(".jsp");
        return internalResourceViewResolver;
    }

    @Bean
    LocaleChangeInterceptor localeInterceptor() {
        LocaleChangeInterceptor localeChangeInterceptor = new LocaleChangeInterceptor();
        localeChangeInterceptor.setParamName("language");
        return new LocaleChangeInterceptor();
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(localeInterceptor());
    }

    @Bean
    LocaleResolver localeResolver() {
        CookieLocaleResolver localeResolver = new CookieLocaleResolver();
        localeResolver.setDefaultLocale(Locale.ENGLISH);
        return localeResolver;

    }
}
