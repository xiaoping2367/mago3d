package com.gaia3d.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

import lombok.Data;

@Data
@Configuration
@PropertySource("classpath:mago3d.properties")
@ConfigurationProperties(prefix = "mago3d")
public class PropertiesConfig {

	private String osType;
	private boolean callRemoteEnable;
	private String serverIp;
	private String serverPort;
	private String restAuthKey;
	
	private String queueServerHost;
	private String queueServerPort;
	private String queueUser;
	private String queuePassword;
	private String queueName;
	private String exchange;
	
	// User excel batch registration
	private String uploadData;
	private String userConverterDir;
	
}
