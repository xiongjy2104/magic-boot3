package org.ssssssss.magicboot.configuration;

import org.springframework.boot.web.embedded.tomcat.TomcatContextCustomizer;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.PathMatchConfigurer;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.util.UrlPathHelper;
import org.ssssssss.magicboot.model.Global;

import java.util.Collections;
//import org.apache.catalina.Context;

@Configuration
public class WebConfiguration implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler(Global.USER_FILES_BASE_URL + "**").addResourceLocations("file:" + Global.getDir() + Global.USER_FILES_BASE_URL);
    }

    // 兼容接口多个"/"，比如//system/xxx
    @Override
    public void configurePathMatch(PathMatchConfigurer configurer) {
        configurer.setUrlPathHelper(new UrlPathHelper());
    }


//    @Bean
//    public TomcatServletWebServerFactory tomcatContainerFactory() {
//        TomcatServletWebServerFactory factory = new TomcatServletWebServerFactory();;
//        factory.setTomcatContextCustomizers(Collections.singletonList(tomcatContextCustomizer()));
//        return factory;
//    }
//
//    @Bean
//    public TomcatContextCustomizer tomcatContextCustomizer() {
//        return new TomcatContextCustomizer() {
//            @Override
//            public void customize(Context context) {
//                context.addServletContainerInitializer(new WsSci(), null);
//            }
//        };
//    }
}
