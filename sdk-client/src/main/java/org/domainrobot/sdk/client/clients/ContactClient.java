package org.domainrobot.sdk.client.clients;

import java.util.List;
import java.util.Map;

import org.domainrobot.sdk.models.DomainrobotApiException;
import org.domainrobot.sdk.models.generated.Contact;
import org.domainrobot.sdk.models.generated.JsonResponseDataContact;
import org.domainrobot.sdk.models.generated.JsonResponseDataJsonNoData;
import org.domainrobot.sdk.models.generated.Query;
import org.springframework.http.HttpMethod;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

/**
 * Implementation of the contact specific API functions.
 * 
 * @author Daniel Linsenmeier
 */
public class ContactClient extends AbstractClient {

    RestTemplate template;

    public ContactClient(String userName, String context, String password, String baseUrl, String version,
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
     * Sends a Contact create request.
     * 
     * @return Contact
     * @throws DomainrobotApiException
     */
    public Contact create(Contact body, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<Contact> request = buildRequestEntity(body, HttpMethod.POST, baseUrl + "/contact", customHeaders);
        ResponseEntity<JsonResponseDataContact> response = null;
        try {
            response = template.exchange(request, JsonResponseDataContact.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Sends a Contact update request.
     * 
     * @return Contact
     * @throws DomainrobotApiException
     */
    public Contact update(Contact body, Map<String, String> customHeaders) throws DomainrobotApiException {
        if (body.getId() == null) {
            throw new IllegalArgumentException("Field Contact.id is missing.");
        }
        RequestEntity<Contact> request = buildRequestEntity(body, HttpMethod.PUT,
                baseUrl + "/contact/" + body.getId().toString(), customHeaders);
        ResponseEntity<JsonResponseDataContact> response = null;
        try {
            response = template.exchange(request, JsonResponseDataContact.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Sends a Contact delete request.
     * 
     * @throws DomainrobotApiException
     */
    public void delete(int id, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<Contact> request = buildRequestEntity(HttpMethod.DELETE, baseUrl + "/contact/" + id,
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
     * Sends a Contact info request.
     * 
     * @return Contact
     * @throws DomainrobotApiException
     */
    public Contact info(int id, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<Contact> request = buildRequestEntity(HttpMethod.GET, baseUrl + "/contact/" + id, customHeaders);
        ResponseEntity<JsonResponseDataContact> response = null;
        try {
            response = template.exchange(request, JsonResponseDataContact.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Sends a Contact list request.
     * 
     * @return List of Contact
     * @throws DomainrobotApiException
     */
    public List<Contact> list(Query body, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<Query> request = buildRequestEntity(body, HttpMethod.GET, baseUrl + "/contact/_search",
                customHeaders);
        ResponseEntity<JsonResponseDataContact> response = null;
        try {
            response = template.exchange(request, JsonResponseDataContact.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData();
    }

}