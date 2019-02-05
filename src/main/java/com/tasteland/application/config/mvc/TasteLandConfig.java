package com.tasteland.application.config.mvc;


import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import javax.sql.DataSource;
import java.beans.PropertyVetoException;

@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan("com.tasteland.application")
@PropertySource("classpath:persistence-mysql.properties")
public class TasteLandConfig {

    @Autowired
    private Environment env;

    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setPrefix("WEB-INF/view/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }

    public DataSource dataSource() {

        ComboPooledDataSource dataSource = new ComboPooledDataSource();

        // set the jdbc driver
        try {
            dataSource.setDriverClass(env.getProperty("jdbc.driver"));
        } catch (PropertyVetoException exception) {
            throw new RuntimeException();
        }

        // set database connection props
        dataSource.setJdbcUrl(env.getProperty("jdbc.url"));
        dataSource.setUser(env.getProperty("jdbc.user"));
        dataSource.setPassword(env.getProperty("jdbc.password"));

        // set connection pool props
        dataSource.setInitialPoolSize(
                getIntProperty("connection.pool.initialPoolSize"));

        dataSource.setMinPoolSize(
                getIntProperty("connection.pool.minPoolSize"));

        dataSource.setMaxPoolSize(
                getIntProperty("connection.pool.maxPoolSize"));

        dataSource.setMaxIdleTime(
                getIntProperty("connection.pool.maxIdleTime"));

        return dataSource;

    }
    private int getIntProperty(String propName) {
        String propVal = env.getProperty(propName);
        int intPropVal = Integer.parseInt(propVal);
        return intPropVal;
    }
}
