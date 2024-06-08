package com.yupi.yuapiclientsdk;

import com.yupi.yuapiclientsdk.client.YuApiClient;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * yuapi-client-sdk com.yupi.yuapiclientsdk
 * 2024/5/18 2:23
 * @Author LD
 */
@Configuration
@ConfigurationProperties("yuapi.client") //与resources中的yml或properties中的配置结合使用
@Data
@ComponentScan
public class YuApiClientConfig {
    private String accessKey;
    private String secretKey;

    @Bean
    public YuApiClient yuApiClient() {
        return new YuApiClient(accessKey, secretKey);
    }
}
