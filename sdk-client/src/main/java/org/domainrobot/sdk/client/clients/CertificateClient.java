package org.domainrobot.sdk.client.clients;

import java.util.List;
import java.util.Map;

import org.domainrobot.sdk.models.DomainrobotApiException;
import org.domainrobot.sdk.models.generated.Certificate;
import org.domainrobot.sdk.models.generated.CertificateData;
import org.domainrobot.sdk.models.generated.JsonResponseDataCertificate;
import org.domainrobot.sdk.models.generated.JsonResponseDataCertificateData;
import org.domainrobot.sdk.models.generated.JsonResponseDataJsonNoData;
import org.domainrobot.sdk.models.generated.JsonResponseDataObjectJob;
import org.domainrobot.sdk.models.generated.ObjectJob;
import org.domainrobot.sdk.models.generated.Query;
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
	 * generate the necessary DCV data. Returns a Job with an id that can be used
	 * for polling.
	 * 
	 * @return ObjectJob
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

	/**
	 * 
	 * Reissue a certificate. The prepareOrder tasks should be called before to
	 * generate the necessary DCV data. Returns a Job with an id that can be used
	 * for polling.
	 * 
	 * @return ObjectJob
	 * @throws DomainrobotApiException
	 * @throws IllegalArgumentException If the id field of the body parameter is
	 *                                  missing.
	 */
	public ObjectJob reissue(Certificate body, Map<String, String> customHeaders)
			throws DomainrobotApiException, IllegalArgumentException {
		if (body.getId() == null) {
			throw new IllegalArgumentException("Field Certificate.id is missing.");
		}
		RequestEntity<Certificate> request = buildRequestEntity(body, HttpMethod.PUT,
				baseUrl + "/certificate/" + body.getId().toString(), customHeaders);
		ResponseEntity<JsonResponseDataObjectJob> response = null;
		try {
			response = template.exchange(request, JsonResponseDataObjectJob.class);
		} catch (HttpClientErrorException e) {
			handleException(e);
		}
		return response.getBody().getData().get(0);
	}

	/**
	 * 
	 * Deletes an existing certificate. Returns a Job with an id that can be used
	 * for polling.
	 * 
	 * @throws DomainrobotApiException
	 */
	public ObjectJob delete(int id, Map<String, String> customHeaders) throws DomainrobotApiException {
		RequestEntity<Certificate> request = buildRequestEntity(HttpMethod.DELETE, baseUrl + "/certificate/" + id,
				customHeaders);
		ResponseEntity<JsonResponseDataObjectJob> response = null;
		try {
			response = template.exchange(request, JsonResponseDataObjectJob.class);
		} catch (HttpClientErrorException e) {
			handleException(e);
		}
		return response.getBody().getData().get(0);
	}

	/**
	 * 
	 * Fetches the information for an existing certificate.
	 * 
	 * @return Certificate
	 * @throws DomainrobotApiException
	 */
	public Certificate info(int id, Map<String, String> customHeaders) throws DomainrobotApiException {
		RequestEntity<Certificate> request = buildRequestEntity(HttpMethod.GET, baseUrl + "/certificate/" + id,
				customHeaders);
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
	 * Sends a certificate list request. <br>
	 * <br>
	 * The following keys can be used for filtering, ordering or fetching additional
	 * data via query parameter:<br>
	 * 
	 * <ul>
	 * <li>product</li>
	 * <li>technical</li>
	 * <li>orderId</li>
	 * <li>created</li>
	 * <li>admin</li>
	 * <li>type</li>
	 * <li>expire</li>
	 * <li>domain</li>
	 * <li>name</li>
	 * <li>comment</li>
	 * <li>id</li>
	 * <li>updated</li>
	 * <li>authentication</li>
	 * </ul>
	 * <br>
	 * <br>
	 * 
	 * @return List of Certificate
	 * @throws DomainrobotApiException
	 */
	public List<Certificate> list(Query body, Map<String, String> customHeaders, Map<String, Object> queryParameters)
			throws DomainrobotApiException {
		RequestEntity<Query> request = buildRequestEntity(body, HttpMethod.GET, baseUrl + "/certificate/_search",
				customHeaders, queryParameters);
		ResponseEntity<JsonResponseDataCertificate> response = null;
		try {
			response = template.exchange(request, JsonResponseDataCertificate.class);
		} catch (HttpClientErrorException e) {
			handleException(e);
		}
		return response.getBody().getData();
	}

	/**
	 * 
	 * Renew a certificate. The prepareOrder tasks should be called before to
	 * generate the necessary DCV data. Returns a Job with an id that can be used
	 * for polling.
	 * 
	 * @return ObjectJob
	 * @throws DomainrobotApiException
	 * @throws IllegalArgumentException If the id field of the body parameter is
	 *                                  missing.
	 */
	public ObjectJob renew(Certificate body, Map<String, String> customHeaders)
			throws DomainrobotApiException, IllegalArgumentException {
		if (body.getId() == null) {
			throw new IllegalArgumentException("Field Certificate.id is missing.");
		}
		RequestEntity<Certificate> request = buildRequestEntity(body, HttpMethod.PUT,
				baseUrl + "/certificate/" + body.getId().toString() + "/_renew", customHeaders);
		ResponseEntity<JsonResponseDataObjectJob> response = null;
		try {
			response = template.exchange(request, JsonResponseDataObjectJob.class);
		} catch (HttpClientErrorException e) {
			handleException(e);
		}
		return response.getBody().getData().get(0);
	}

	/**
	 * 
	 * Updates the comment for an existing certificate.
	 * 
	 * @throws DomainrobotApiException
	 */
	public void commentUpdate(int id, String comment, Map<String, String> customHeaders)
			throws DomainrobotApiException, IllegalArgumentException {
		Certificate body = new Certificate().comment(comment);
		RequestEntity<Certificate> request = buildRequestEntity(body, HttpMethod.PUT,
				baseUrl + "/certificate/" + id + "/_comment", customHeaders);
		try {
			template.exchange(request, JsonResponseDataJsonNoData.class);
		} catch (HttpClientErrorException e) {
			handleException(e);
		}
		return;
	}

}
