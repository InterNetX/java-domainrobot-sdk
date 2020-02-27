
package org.domainrobot.sdk.client.clients;

import java.util.List;
import java.util.Map;

import org.domainrobot.sdk.models.DomainrobotApiException;
import org.domainrobot.sdk.models.generated.JsonResponseDataJsonNoData;
import org.domainrobot.sdk.models.generated.JsonResponseDataTrustedApplication;
import org.domainrobot.sdk.models.generated.Query;
import org.domainrobot.sdk.models.generated.TrustedApplication;
import org.springframework.http.HttpMethod;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

/**
 * Implementation of the trusted application specific API functions.
 * 
 * @author Daniel Linsenmeier
 */
public class TrustedApplicationClient extends AbstractClient {

    RestTemplate template;

    public TrustedApplicationClient(String userName, String context, String password, String baseUrl, String version,
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
     * Sends a TrustedApplication create request.
     * 
     * @return TrustedApplication
     * @throws DomainrobotApiException
     */
    public TrustedApplication create(TrustedApplication body, Map<String, String> customHeaders)
            throws DomainrobotApiException {
        RequestEntity<TrustedApplication> request = buildRequestEntity(body, HttpMethod.POST, baseUrl + "/trustedapp",
                customHeaders);
        ResponseEntity<JsonResponseDataTrustedApplication> response = null;
        try {
            response = template.exchange(request, JsonResponseDataTrustedApplication.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Sends a TrustedApplication update request.
     * 
     * @return TrustedApplication
     * @throws DomainrobotApiException
     */
    public TrustedApplication update(TrustedApplication body, Map<String, String> customHeaders)
            throws DomainrobotApiException {
        if (body.getUuid() == null) {
            throw new IllegalArgumentException("Field TrustedApplication.uuid is missing.");
        }
        RequestEntity<TrustedApplication> request = buildRequestEntity(body, HttpMethod.PUT,
                baseUrl + "/trustedapp/" + body.getUuid().toString(), customHeaders);
        ResponseEntity<JsonResponseDataTrustedApplication> response = null;
        try {
            response = template.exchange(request, JsonResponseDataTrustedApplication.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Sends a TrustedApplication delete request.
     * 
     * @throws DomainrobotApiException
     */
    public void delete(String uuid, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<TrustedApplication> request = buildRequestEntity(HttpMethod.DELETE,
                baseUrl + "/trustedapp/" + uuid, customHeaders);
        try {
            template.exchange(request, JsonResponseDataJsonNoData.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return;
    }

    /**
     * 
     * Sends a TrustedApplication info request.
     * 
     * @return TrustedApplication
     * @throws DomainrobotApiException
     */
    public TrustedApplication info(String uuid, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<TrustedApplication> request = buildRequestEntity(HttpMethod.GET, baseUrl + "/trustedapp/" + uuid,
                customHeaders);
        ResponseEntity<JsonResponseDataTrustedApplication> response = null;
        try {
            response = template.exchange(request, JsonResponseDataTrustedApplication.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Sends a TrustedApplication list request.
     * 
     * <br>
     * <br>
     * The following keys can be used for filtering, ordering or fetching additional
     * data via query parameter:<br>
     * 
     * <ul>
     * <li>created</li>
     * <li>comment</li>
     * <li>uuid</li>
     * <li>device</li>
     * <li>updated</li>
     * <li>application</li>
     * </ul>
     * <br>
     * <br>
     * 
     * @return List of TrustedApplication
     * @throws DomainrobotApiException
     */
    public List<TrustedApplication> list(Query body, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<Query> request = buildRequestEntity(body, HttpMethod.GET, baseUrl + "/trustedapp/_search",
                customHeaders);
        ResponseEntity<JsonResponseDataTrustedApplication> response = null;
        try {
            response = template.exchange(request, JsonResponseDataTrustedApplication.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData();
    }

}
