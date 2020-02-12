package org.domainrobot.sdk.client.clients;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

import org.domainrobot.sdk.client.JsonUtils;
import org.domainrobot.sdk.models.DomainRobotHeaders;
import org.domainrobot.sdk.models.DomainrobotApiException;
import org.domainrobot.sdk.models.generated.JsonResponseData;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.RequestEntity;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.HttpClientErrorException;

/**
 * Abstract class for all clients.
 * 
 * @author Daniel Linsenmeier
 *
 */
public class AbstractClient {

	/**
	 * The DomainRobot API username
	 */
	String userName;

	/**
	 * The DomainRobot API user password
	 */
	String password;

	/**
	 * The DomainRobot API user context
	 */
	String context;

	/**
	 * The DomainRobot API base url
	 */
	String baseUrl;

	/**
	 * The Package version
	 */
	String version;

	/**
	 * Merge the given headers with the basic headers needed for the domainrobot api.
	 * 
	 * @param headers
	 * @return A merged MultiValueMap<String, String> containing the headers
	 */
	public MultiValueMap<String, String> mergeHeaders(MultiValueMap<String, String> headers) {
		if(headers == null || headers.isEmpty()) {
			return getBasicHeaders();
		}
		headers.addAll(getBasicHeaders());
		return headers;
	}

	/**
	 * Returns the basic headers needed for the domainrobot api.
	 * 
	 * @return A MultiValueMap<String, String> containing the headers
	 */
	public MultiValueMap<String, String> getBasicHeaders() {
		MultiValueMap<String, String> headers = new LinkedMultiValueMap<String, String>();
		headers.add(HttpHeaders.CONTENT_TYPE, "application/json");
		headers.add(HttpHeaders.ACCEPT, "application/json");
		headers.add(HttpHeaders.AUTHORIZATION, "Basic " + HttpHeaders.encodeBasicAuth(userName, password, null));
		headers.add(DomainRobotHeaders.DOMAINROBOT_HEADER_CONTEXT, context);
		headers.add(HttpHeaders.USER_AGENT, "JavaDomainrobotSdk/" + version);
		return headers;
	}

	/**
	 * Builds a RequestEntity for the RestTemplate.
	 * 
	 * @param <T>
	 * @param body
	 * @param method
	 * @param url
	 * @param customHeaders
	 * @return Returns a RequestEntity with the type of the given body.
	 */
	public <T> RequestEntity<T> buildRequestEntity(T body, HttpMethod method, String url, MultiValueMap<String, String> customHeaders) {
		URI uri = null;
		try {
			uri = new URI(url);
		} catch(URISyntaxException e) {
			return null;
		}
		if(body == null) {
			return new RequestEntity<T>(mergeHeaders(customHeaders), method, uri);
		} else {
			return new RequestEntity<T>(body, mergeHeaders(customHeaders), method, uri);
		}
	}

	public void handleException(HttpClientErrorException e) throws DomainrobotApiException, IOException {
		String bodyAsString = e.getResponseBodyAsString();
		JsonResponseData body = JsonUtils.deserialize(bodyAsString.getBytes(), JsonResponseData.class);
		String message = body.getMessages().get(0).getText();
		String errorCode = body.getMessages().get(0).getCode();
		String stid = body.getStid();

		throw new DomainrobotApiException(message, bodyAsString, errorCode, stid,
				e.getResponseHeaders().toSingleValueMap());

	}

}
