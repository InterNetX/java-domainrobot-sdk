package org.domainrobot.sdk.client.clients;

import java.util.List;
import java.util.Map;

import org.domainrobot.sdk.models.DomainrobotApiException;
import org.domainrobot.sdk.models.generated.DomainCancelation;
import org.domainrobot.sdk.models.generated.JsonResponseDataDomainCancelation;
import org.domainrobot.sdk.models.generated.JsonResponseDataJsonNoData;
import org.domainrobot.sdk.models.generated.Query;
import org.springframework.http.HttpMethod;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

/**
 * Implementation of the domain cancelation specific API functions.
 * 
 * @author Daniel Linsenmeier
 */
public class DomainCancelationClient extends AbstractClient {

    RestTemplate template;

    public DomainCancelationClient(String userName, String context, String password, String baseUrl, String version,
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
     * Sends a DomainCancelation create request.
     * 
     * @return DomainCancelation
     * @throws DomainrobotApiException
     * @throws IllegalArgumentException If field domain is missing
     */
    public DomainCancelation create(DomainCancelation body, Map<String, String> customHeaders)
            throws DomainrobotApiException {
        if (body.getDomain() == null) {
            throw new IllegalArgumentException("Field DomainCancelation.domain is missing.");
        }
        RequestEntity<DomainCancelation> request = buildRequestEntity(body, HttpMethod.POST,
                baseUrl + "/domain/" + body.getDomain() + "/cancelation", customHeaders);
        ResponseEntity<JsonResponseDataDomainCancelation> response = null;
        try {
            response = template.exchange(request, JsonResponseDataDomainCancelation.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Sends a DomainCancelation update request.
     * 
     * @throws DomainrobotApiException
     * @throws IllegalArgumentException If field domain is missing
     */
    public void update(DomainCancelation body, Map<String, String> customHeaders) throws DomainrobotApiException {
        if (body.getDomain() == null) {
            throw new IllegalArgumentException("Field DomainCancelation.domain is missing.");
        }
        RequestEntity<DomainCancelation> request = buildRequestEntity(body, HttpMethod.PUT,
                baseUrl + "/domain/" + body.getDomain() + "/cancelation", customHeaders);
        try {
            template.exchange(request, JsonResponseDataJsonNoData.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return;
    }

    /**
     * 
     * Deletes an existing cancelation for the given domain.
     * 
     * @throws DomainrobotApiException
     */
    public void delete(String domain, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<DomainCancelation> request = buildRequestEntity(HttpMethod.DELETE,
                baseUrl + "/domain/" + domain + "/cancelation", customHeaders);
        try {
            template.exchange(request, JsonResponseDataJsonNoData.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return;
    }

    /**
     * 
     * Fetches the cancelation for the given domain.
     * 
     * @return DomainCancelation
     * @throws DomainrobotApiException
     */
    public DomainCancelation info(String domain, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<DomainCancelation> request = buildRequestEntity(HttpMethod.GET,
                baseUrl + "/domain/" + domain + "/cancelation", customHeaders);
        ResponseEntity<JsonResponseDataDomainCancelation> response = null;
        try {
            response = template.exchange(request, JsonResponseDataDomainCancelation.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Sends a DomainCancelation list request.
     * 
     * <br>
     * <br>
     * The following keys can be used for filtering, ordering or fetching additional
     * data via query parameter:<br>
     * 
     * <ul>
     * <li>disconnect</li>
     * <li>execdate</li>
     * <li>ctid</li>
     * <li>created</li>
     * <li>registryStatus</li>
     * <li>sld</li>
     * <li>type</li>
     * <li>tld</li>
     * <li>subtld</li>
     * <li>gainingRegistrar</li>
     * <li>updated</li>
     * </ul>
     * <br>
     * <br>
     * 
     * @return List of DomainCancelation
     * @throws DomainrobotApiException
     */
    public List<DomainCancelation> list(Query body, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<Query> request = buildRequestEntity(body, HttpMethod.POST, baseUrl + "/domain/cancelation/_search",
                customHeaders);
        ResponseEntity<JsonResponseDataDomainCancelation> response = null;
        try {
            response = template.exchange(request, JsonResponseDataDomainCancelation.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData();
    }

}
