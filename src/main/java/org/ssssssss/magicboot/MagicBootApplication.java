package org.ssssssss.magicboot;

//import com.github.netty.springboot.EnableNettyEmbedded;
import com.github.netty.springboot.EnableNettyEmbedded;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.ServerProperties;
import org.springframework.context.ApplicationContext;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.ssssssss.magicapi.core.config.MagicAPIProperties;

import java.util.Arrays;

//@SpringBootApplication
//public class MagicBootApplication {
//
//    public static void main(String[] args) {
//        SpringApplication.run(MagicBootApplication.class, args);
//    }
//
//}

@SpringBootApplication
@EnableNettyEmbedded
 @EnableWebSocket // 如果引入了websocket，可以打这个注解开启
public class MagicBootApplication implements ApplicationRunner {
    @Autowired
    private ServerProperties serverProperties;
    @Autowired
    private MagicAPIProperties magicAPIProperties;

    private static ApplicationContext applicationContext;

    public static void main(String[] args) {
        applicationContext = SpringApplication.run(MagicBootApplication.class, args);

        String[] array = applicationContext.getBeanDefinitionNames();
        Arrays.sort(array);
        System.out.println("系统已加载的beanName列表：");
        for (String beanName : array) {
            System.out.printf("    %s\n", beanName);
        }
    }

    @Override
    public void run(ApplicationArguments args) throws Exception {
        System.out.println(String.format("服务启动完成：\thttp://localhost:%d%s", serverProperties.getPort(), magicAPIProperties.getWeb()));
    }

}
