package org.domainrobot.sdk.client.clients;

import java.util.Map;

import org.domainrobot.sdk.models.DomainrobotApiException;
import org.domainrobot.sdk.models.generated.Certificate;
import org.domainrobot.sdk.models.generated.CertificateData;
import org.domainrobot.sdk.models.generated.JsonResponseDataCertificate;
import org.domainrobot.sdk.models.generated.JsonResponseDataCertificateData;
import org.domainrobot.sdk.models.generated.JsonResponseDataObjectJob;
import org.domainrobot.sdk.models.generated.ObjectJob;
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

	public CertificateClient(String userName, String context, String password, String baseUrl, String version,
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
	 * Orders a certificate in realtime. The prepareOrder tasks should be called
	 * before to generate the necessary DCV data. <br>
	 * <br>
	 * <b>Note:</b> This works only for certain DV certificate products and dcv
	 * methods.
	 * 
	 * @return Certificate
	 * @throws DomainrobotApiException
	 */
	public Certificate realtime(Certificate body, Map<String, String> customHeaders) throws DomainrobotApiException {
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
	 * Check the csr and generate DCV data for an order, renew and reissue. This
	 * should be called everytime before the following tasks :
	 * <ul>
	 * <li>realtime</li>
	 * <li>create</li>
	 * <li>reissue</li>
	 * <li>renew</li>
	 * </ul>
	 * <br>
	 * 
	 * @return CertificateData
	 * @throws DomainrobotApiException
	 */
	public CertificateData prepareOrder(CertificateData body, Map<String, String> customHeaders)
			throws DomainrobotApiException {
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

	/**
	 * 
	 * Orders a certificate. The prepareOrder tasks should be called before to
	 * generate the necessary DCV data.
	 * 
	 * @return Certificate
	 * @throws DomainrobotApiException
	 */
	public ObjectJob create(Certificate body, Map<String, String> customHeaders) throws DomainrobotApiException {
		RequestEntity<Certificate> request = buildRequestEntity(body, HttpMethod.POST, baseUrl + "/certificate",
				customHeaders);
		ResponseEntity<JsonResponseDataObjectJob> response = null;
		try {
			response = template.exchange(request, JsonResponseDataObjectJob.class);
		} catch (HttpClientErrorException e) {
			handleException(e);
		}
		return response.getBody().getData().get(0);
	}

}
