package edu.nus.image.api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = { "edu.nus.image.api" })
public class AppConfig {
	public static void main(String[] args) {
		SpringApplication.run(AppConfig.class, args);
	}
}
