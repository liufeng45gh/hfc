package com.lucifer.config;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;
import java.beans.PropertyVetoException;


@Configuration

public class DataBaseHfcConfiguration {

    private  Logger log = LoggerFactory.getLogger(this.getClass());

    @Value("${jdbc-hfc.url}")
    private String url;

    @Value("${jdbc-hfc.driverClass}")
    private String driverClass;

    @Value("${jdbc-hfc.username}")
    private String username;

    @Value("${jdbc-hfc.password}")
    private String password;

    @Bean(name = "hfcDataSource")
    public DataSource userDataSource() throws PropertyVetoException {
        ComboPooledDataSource dataSource = new ComboPooledDataSource();
        dataSource.setJdbcUrl(url);
        dataSource.setDriverClass(driverClass);
        dataSource.setUser(username);
        dataSource.setPassword(password);
        dataSource.setInitialPoolSize(5);
        dataSource.setMinPoolSize(2);
        dataSource.setMaxPoolSize(10);
        dataSource.setIdleConnectionTestPeriod(3000);
        return dataSource;
    }


}