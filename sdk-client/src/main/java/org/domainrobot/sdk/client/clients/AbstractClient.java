package org.domainrobot.sdk.client.clients;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.domainrobot.sdk.client.JsonUtils;
import org.domainrobot.sdk.models.DomainRobotHeaders;
import org.domainrobot.sdk.models.DomainrobotApiException;
import org.domainrobot.sdk.models.generated.JsonResponseData;
import org.domainrobot.sdk.models.generated.Query;
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
	 * Merge the given headers with the basic headers needed for the domainrobot
	 * api.
	 * 
	 * @param headers
	 * @return A merged MultiValueMap<String, String> containing the headers
	 */
	public Map<String, String> mergeHeaders(Map<String, String> headers) {
		if (headers == null || headers.isEmpty()) {
			return getBasicHeaders();
		}
		headers.putAll(getBasicHeaders());
		return headers;
	}

	/**
	 * Returns the basic headers needed for the domainrobot api.
	 * 
	 * @return A MultiValueMap<String, String> containing the headers
	 */
	public Map<String, String> getBasicHeaders() {
		Map<String, String> headers = new HashMap<String, String>();
		headers.put(HttpHeaders.CONTENT_TYPE, "application/json");
		headers.put(HttpHeaders.ACCEPT, "application/json");
		headers.put(HttpHeaders.AUTHORIZATION, "Basic " + HttpHeaders.encodeBasicAuth(userName, password, null));
		headers.put(DomainRobotHeaders.DOMAINROBOT_HEADER_CONTEXT, context);
		headers.put(HttpHeaders.USER_AGENT, "JavaDomainrobotSdk/" + version);
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
	public <T> RequestEntity<T> buildRequestEntity(T body, HttpMethod method, String url,
			Map<String, String> customHeaders) {
		return buildRequestEntity(body, method, url, customHeaders, null);
	}

	/**
	 * Builds a RequestEntity for the RestTemplate.
	 * 
	 * @param method
	 * @param url
	 * @param customHeaders
	 * @return Returns a RequestEntity with the type of the given body.
	 */
	public <T> RequestEntity<T> buildRequestEntity(HttpMethod method, String url, Map<String, String> customHeaders) {
		return buildRequestEntity(null, method, url, customHeaders, null);
	}

	/**
	 * Builds a RequestEntity for the RestTemplate.
	 * 
	 * @param <T>
	 * @param body
	 * @param method
	 * @param url
	 * @param customHeaders
	 * @param queryParameters
	 * @return Returns a RequestEntity with the type of the given body.
	 */
	public <T> RequestEntity<T> buildRequestEntity(T body, HttpMethod method, String url,
			Map<String, String> customHeaders, Map<String, Object> queryParameters) {

		if (queryParameters != null) {
			url = url + buildQueryParameterString(queryParameters);
		}

		URI uri = null;
		try {
			uri = new URI(url);
		} catch (URISyntaxException e) {
			return null;
		}

		MultiValueMap<String, String> headers = new LinkedMultiValueMap<>();
		headers.setAll(mergeHeaders(customHeaders));

		if (body == null) {
			return new RequestEntity<T>(headers, method, uri);
		} else {
			return new RequestEntity<T>(body, headers, method, uri);
		}
	}

	public void handleException(HttpClientErrorException e) throws DomainrobotApiException {
		String bodyAsString = e.getResponseBodyAsString();
		String message = "";
		String errorCode = "";
		String stid = "";
		try {
			JsonResponseData body = JsonUtils.deserialize(bodyAsString.getBytes(), JsonResponseData.class);
			message = body.getMessages().get(0).getText();
			errorCode = body.getMessages().get(0).getCode();
			stid = body.getStid();
		} catch (IOException ioException) {
			// Can't parse the response body to JsonResponseData model
		}

		throw new DomainrobotApiException(message, bodyAsString, errorCode, stid,
				e.getResponseHeaders().toSingleValueMap());

	}

	/**
	 * 
	 * @param queryParameters
	 * @return All query parameters as a string
	 */
	public String buildQueryParameterString(Map<String, Object> queryParameters) {
		StringBuffer sb = new StringBuffer();
		for (String f : queryParameters.keySet()) {
			if (sb.length() == 0) {
				sb.append("?");
			}
			Object o = queryParameters.get(f);
			if (o instanceof List<?>) {
				List<String> values = (List<String>) o;
				for (String s : values) {
					if (sb.length() == 1) {
						sb.append(f).append("=").append(s);
					} else {
						sb.append("&").append(f).append("=").append(s);
					}
				}
			} else {
				if (sb.length() == 1) {
					sb.append(f).append("=").append(queryParameters.get(f));
				} else {
					sb.append("&").append(f).append("=").append(queryParameters.get(f));
				}
			}
		}
		return sb.toString();
	}
}
