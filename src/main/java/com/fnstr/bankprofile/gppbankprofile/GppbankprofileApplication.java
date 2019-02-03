package com.fnstr.bankprofile.gppbankprofile;

import com.fnstr.bankprofile.gppbankprofile.repository.BanksRepository;
import com.fnstr.bankprofile.gppbankprofile.resolver.BankQueryResolver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;

import java.util.Arrays;

@SpringBootApplication
public class GppbankprofileApplication {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	public static void main(String[] args) {
		SpringApplication.run(GppbankprofileApplication.class, args);
	}

	@Bean
	public BankQueryResolver query(BanksRepository banksRepository) {
		return new BankQueryResolver(banksRepository);
	}


	@Bean
	public CommandLineRunner commandLineRunner(ApplicationContext ctx) {
		return args -> {

			System.out.println("Let's inspect the beans provided by Spring Boot:");

			String[] beanNames = ctx.getBeanDefinitionNames();
			Arrays.sort(beanNames);
			for (String beanName : beanNames) {
				logger.info(" Found : " + beanName );
			}

		};
	}

}

