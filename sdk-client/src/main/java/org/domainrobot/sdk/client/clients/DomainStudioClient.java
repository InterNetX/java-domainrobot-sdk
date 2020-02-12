package org.domainrobot.sdk.client.clients;

import java.io.IOException;

import org.domainrobot.sdk.models.DomainrobotApiException;
import org.domainrobot.sdk.models.generated.DomainEnvelopeSearchRequest;
import org.domainrobot.sdk.models.generated.JsonResponseData;
import org.springframework.http.HttpMethod;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

/**
 * Implementation of the domainstudio specific API functions.
 * 
 * @author Daniel Linsenmeier
 */
public class DomainStudioClient extends AbstractClient {

	RestTemplate template;

	public DomainStudioClient(String userName, String context, String password, String baseUrl, String version, RestTemplate template) {
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
	public JsonResponseData search(DomainEnvelopeSearchRequest body, MultiValueMap<String, String> customHeaders) throws DomainrobotApiException, IOException {
		RequestEntity<DomainEnvelopeSearchRequest> request = buildRequestEntity(
			body,
			HttpMethod.POST,
			baseUrl + "/domainstudio",
			customHeaders);
		ResponseEntity<JsonResponseData> response = null;
		try {
			response = template.exchange(request, JsonResponseData.class);
		} catch(HttpClientErrorException e) {
			handleException(e);
		}
		return response.getBody();
	}

}
