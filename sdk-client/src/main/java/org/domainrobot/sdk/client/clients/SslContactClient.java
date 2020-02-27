package org.domainrobot.sdk.client.clients;

import java.util.List;
import java.util.Map;

import org.domainrobot.sdk.models.DomainrobotApiException;
import org.domainrobot.sdk.models.generated.JsonResponseDataJsonNoData;
import org.domainrobot.sdk.models.generated.JsonResponseDataSslContact;
import org.domainrobot.sdk.models.generated.Query;
import org.domainrobot.sdk.models.generated.SslContact;
import org.springframework.http.HttpMethod;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

/**
 * Implementation of the ssl contact specific API functions.
 * 
 * @author Daniel Linsenmeier
 */
public class SslContactClient extends AbstractClient {

    RestTemplate template;

    public SslContactClient(String userName, String context, String password, String baseUrl, String version,
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
     * Sends a sslcontact create request.
     * 
     * @return SslContact
     * @throws DomainrobotApiException
     */
    public SslContact create(SslContact body, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<SslContact> request = buildRequestEntity(body, HttpMethod.POST, baseUrl + "/sslcontact",
                customHeaders);
        ResponseEntity<JsonResponseDataSslContact> response = null;
        try {
            response = template.exchange(request, JsonResponseDataSslContact.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Sends a sslcontact update request.
     * 
     * @return SslContact
     * @throws DomainrobotApiException
     */
    public SslContact update(SslContact body, Map<String, String> customHeaders) throws DomainrobotApiException {
        if (body.getId() == null) {
            throw new IllegalArgumentException("Field SslContact.id is missing.");
        }
        RequestEntity<SslContact> request = buildRequestEntity(body, HttpMethod.PUT,
                baseUrl + "/sslcontact/" + body.getId().toString(), customHeaders);
        ResponseEntity<JsonResponseDataSslContact> response = null;
        try {
            response = template.exchange(request, JsonResponseDataSslContact.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Sends a sslcontact delete request.
     * 
     * @throws DomainrobotApiException
     */
    public void delete(int id, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<SslContact> request = buildRequestEntity(HttpMethod.DELETE, baseUrl + "/sslcontact/" + id,
                customHeaders);
        try {
            template.exchange(request, JsonResponseDataJsonNoData.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return;
    }

    /**
     * 
     * Sends a sslcontact info request.
     * 
     * @return SslContact
     * @throws DomainrobotApiException
     */
    public SslContact info(int id, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<SslContact> request = buildRequestEntity(HttpMethod.GET, baseUrl + "/sslcontact/" + id,
                customHeaders);
        ResponseEntity<JsonResponseDataSslContact> response = null;
        try {
            response = template.exchange(request, JsonResponseDataSslContact.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Sends a sslcontact list request.
     * 
     * <br>
     * <br>
     * The following keys can be used for filtering, ordering or fetching additional
     * data via query parameter:<br>
     * 
     * <ul>
     * <li>country</li>
     * <li>fname</li>
     * <li>address</li>
     * <li>city</li>
     * <li>created</li>
     * <li>title</li>
     * <li>lname</li>
     * <li>phone</li>
     * <li>organization</li>
     * <li>state</li>
     * <li>id</li>
     * <li>fax</li>
     * <li>pcode</li>
     * <li>updated</li>
     * <li>email</li>
     * </ul>
     * <br>
     * <br>
     * 
     * @return List of SslContact
     * @throws DomainrobotApiException
     */
    public List<SslContact> list(Query body, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<Query> request = buildRequestEntity(body, HttpMethod.GET, baseUrl + "/sslcontact/_search",
                customHeaders);
        ResponseEntity<JsonResponseDataSslContact> response = null;
        try {
            response = template.exchange(request, JsonResponseDataSslContact.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData();
    }

}
