package org.domainrobot.sdk.client.clients;

import java.io.IOException;

import org.domainrobot.sdk.models.DomainrobotApiException;
import org.domainrobot.sdk.models.generated.Certificate;
import org.domainrobot.sdk.models.generated.CertificateData;
import org.domainrobot.sdk.models.generated.JsonResponseData;
import org.springframework.http.HttpMethod;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

/**
 * Implementation of the certificate specific API functions.
 * 
 * @author Daniel Linsenmeier
 */
public class CertificateClient extends AbstractClient {

	RestTemplate template;

	public CertificateClient(String userName, String context, String password, String baseUrl, String version) {
		this.userName = userName;
		this.context = context;
		this.password = password;
		this.baseUrl = baseUrl;
		this.version = version;
		this.template = new RestTemplate();
	}

	/**
	 * 
	 * @return
	 * @throws IOException
	 */
	public JsonResponseData realtime(Certificate body, MultiValueMap<String, String> customHeaders) throws DomainrobotApiException, IOException {
		RequestEntity<Certificate> request = buildRequestEntity(
			body,
			HttpMethod.POST,
			baseUrl + "/certificate/realtime",
			customHeaders);
		ResponseEntity<JsonResponseData> response = null;
		try {
			response = template.exchange(request, JsonResponseData.class);
		} catch(HttpClientErrorException e) {
			handleException(e);
		}
		return response.getBody();
	}

	/**
	 * 
	 * @return
	 * @throws IOException
	 */
	public JsonResponseData prepareOrder(CertificateData body, MultiValueMap<String, String> customHeaders) throws DomainrobotApiException, IOException {
		RequestEntity<CertificateData> request = buildRequestEntity(
			body,
			HttpMethod.POST,
			baseUrl + "/certificate/prepareOrder",
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
