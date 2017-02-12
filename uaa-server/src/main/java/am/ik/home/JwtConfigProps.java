package am.ik.home;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;
import org.springframework.validation.annotation.Validated;

import lombok.Data;

@ConfigurationProperties(prefix = "jwt")
@Validated
@Data
@Component
public class JwtConfigProps {
	private String issuer;
	private String verifierKey;
	private String signingKey;
}
