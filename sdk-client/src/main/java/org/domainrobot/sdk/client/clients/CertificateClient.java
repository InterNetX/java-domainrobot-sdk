package org.domainrobot.sdk.client.clients;

import java.io.IOException;
import java.util.Map;

import org.domainrobot.sdk.models.DomainrobotApiException;
import org.domainrobot.sdk.models.generated.Certificate;
import org.domainrobot.sdk.models.generated.CertificateData;
import org.domainrobot.sdk.models.generated.JsonResponseDataCertificate;
import org.domainrobot.sdk.models.generated.JsonResponseDataCertificateData;
import org.springframework.http.HttpMethod;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
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
	public Certificate realtime(Certificate body, Map<String, String> customHeaders)
			throws DomainrobotApiException, IOException {
		RequestEntity<Certificate> request = buildRequestEntity(body, HttpMethod.POST,
				baseUrl + "/certificate/realtime", customHeaders);
		ResponseEntity<JsonResponseDataCertificate> response = null;
		try {
			response = template.exchange(request, JsonResponseDataCertificate.class);
		} catch (HttpClientErrorException e) {
			handleException(e);
		}
		return response.getBody().getData().get(0);
	}

	/**
	 * 
	 * @return
	 * @throws IOException
	 */
	public CertificateData prepareOrder(CertificateData body, Map<String, String> customHeaders)
			throws DomainrobotApiException, IOException {
		RequestEntity<CertificateData> request = buildRequestEntity(body, HttpMethod.POST,
				baseUrl + "/certificate/prepareOrder", customHeaders);
		ResponseEntity<JsonResponseDataCertificateData> response = null;
		try {
			response = template.exchange(request, JsonResponseDataCertificateData.class);
		} catch (HttpClientErrorException e) {
			handleException(e);
		}
		return response.getBody().getData().get(0);
	}

}
