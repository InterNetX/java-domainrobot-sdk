package org.domainrobot.sdk.client.clients;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.domainrobot.sdk.models.DomainrobotApiException;
import org.domainrobot.sdk.models.generated.DomainEnvelope;
import org.domainrobot.sdk.models.generated.DomainEnvelopeSearchRequest;
import org.domainrobot.sdk.models.generated.JsonResponseDataDomainEnvelope;
import org.springframework.http.HttpMethod;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

/**
 * Implementation of the domainstudio specific API functions.
 * 
 * @author Daniel Linsenmeier
 */
public class DomainStudioClient extends AbstractClient {

	RestTemplate template;

	public DomainStudioClient(String userName, String context, String password, String baseUrl, String version,
			RestTemplate template) {
		this.userName = userName;
		this.context = context;
		this.password = password;
		this.baseUrl = baseUrl;
		this.version = version;
		this.template = template;

	}

	/**
	 * 
	 * @return
	 * @throws IOException
	 */
	public List<DomainEnvelope> search(DomainEnvelopeSearchRequest body, Map<String, String> customHeaders)
			throws DomainrobotApiException, IOException {
		RequestEntity<DomainEnvelopeSearchRequest> request = buildRequestEntity(body, HttpMethod.POST,
				baseUrl + "/domainstudio", customHeaders);
		ResponseEntity<JsonResponseDataDomainEnvelope> response = null;
		try {
			response = template.exchange(request, JsonResponseDataDomainEnvelope.class);
		} catch (HttpClientErrorException e) {
			handleException(e);
		}
		return response.getBody().getData();
	}

}
