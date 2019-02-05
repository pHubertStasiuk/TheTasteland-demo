package com.tasteland.application.config.security;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;

@Configuration
@EnableWebSecurity
public class TasteLandSecurityWebInitializer extends AbstractSecurityWebApplicationInitializer {


}
