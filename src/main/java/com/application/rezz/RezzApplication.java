package com.application.rezz;


import lombok.extern.log4j.Log4j2;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.core.env.Environment;


@SpringBootApplication
@Log4j2
public class RezzApplication {

    public static void main(String[] args) {
        SpringApplication.run(RezzApplication.class, args);
    }

    @Bean
    ApplicationRunner applicationRunner(Environment environment) {
        ApplicationRunner runner = args -> {};
        String[] profiles = environment.getActiveProfiles();
        log.info("Active Profiles {}", profiles);
        return runner;
    }

}
