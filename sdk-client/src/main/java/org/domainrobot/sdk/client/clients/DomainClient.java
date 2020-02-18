package org.domainrobot.sdk.client.clients;

import java.util.List;
import java.util.Map;

import org.domainrobot.sdk.models.DomainrobotApiException;
import org.domainrobot.sdk.models.generated.Domain;
import org.domainrobot.sdk.models.generated.DomainRestore;
import org.domainrobot.sdk.models.generated.JsonResponseDataDomain;
import org.domainrobot.sdk.models.generated.JsonResponseDataDomainRestore;
import org.domainrobot.sdk.models.generated.JsonResponseDataObjectJob;
import org.domainrobot.sdk.models.generated.ObjectJob;
import org.domainrobot.sdk.models.generated.Query;
import org.springframework.http.HttpMethod;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

/**
 * Implementation of the domain specific API functions.
 * 
 * @author Daniel Linsenmeier
 */
public class DomainClient extends AbstractClient {

    RestTemplate template;

    public DomainClient(String userName, String context, String password, String baseUrl, String version,
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
     * Sends a Domain create request.
     * 
     * @return ObjectJob
     * @throws DomainrobotApiException
     */
    public ObjectJob create(Domain body, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<Domain> request = buildRequestEntity(body, HttpMethod.POST, baseUrl + "/domain", customHeaders);
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
     * Sends a Domain update request.
     * 
     * @return ObjectJob
     * @throws DomainrobotApiException
     */
    public ObjectJob update(Domain body, Map<String, String> customHeaders) throws DomainrobotApiException {
        if (body.getName() == null) {
            throw new IllegalArgumentException("Field Domain.name is missing.");
        }
        RequestEntity<Domain> request = buildRequestEntity(body, HttpMethod.PUT, baseUrl + "/domain/" + body.getName(),
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
     * Sends a Domain info request.
     * 
     * @return Domain
     * @throws DomainrobotApiException
     */
    public Domain info(String domain, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<Domain> request = buildRequestEntity(HttpMethod.GET, baseUrl + "/domain/" + domain,
                customHeaders);
        ResponseEntity<JsonResponseDataDomain> response = null;
        try {
            response = template.exchange(request, JsonResponseDataDomain.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Sends a Domain list request.
     * 
     * @return List of Domain
     * @throws DomainrobotApiException
     */
    public List<Domain> list(Query body, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<Query> request = buildRequestEntity(body, HttpMethod.POST, baseUrl + "/domain/_search",
                customHeaders);
        ResponseEntity<JsonResponseDataDomain> response = null;
        try {
            response = template.exchange(request, JsonResponseDataDomain.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData();
    }

    /**
     * 
     * Sends a authinfo1 create request.
     * 
     * @return Domain
     * @throws DomainrobotApiException
     */
    public Domain createAuthinfo1(String domain, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<Domain> request = buildRequestEntity(HttpMethod.POST,
                baseUrl + "/domain/" + domain + "/_authinfo1", customHeaders);
        ResponseEntity<JsonResponseDataDomain> response = null;
        try {
            response = template.exchange(request, JsonResponseDataDomain.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Sends a authinfo1 delete request.
     * 
     * @return Domain
     * @throws DomainrobotApiException
     */
    public void deleteAuthinfo1(String domain, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<Domain> request = buildRequestEntity(HttpMethod.DELETE,
                baseUrl + "/domain/" + domain + "/_authinfo1", customHeaders);
        try {
            template.exchange(request, JsonResponseDataDomain.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return;
    }

    /**
     * 
     * Sends a authinfo2 create request.
     * 
     * @return Domain
     * @throws DomainrobotApiException
     */
    public Domain createAuthinfo2(String domain, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<Domain> request = buildRequestEntity(HttpMethod.POST,
                baseUrl + "/domain/" + domain + "/_authinfo2", customHeaders);
        ResponseEntity<JsonResponseDataDomain> response = null;
        try {
            response = template.exchange(request, JsonResponseDataDomain.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Sends a Domain renew request.
     * 
     * @return ObjectJob
     * @throws DomainrobotApiException
     */
    public ObjectJob renew(Domain body, Map<String, String> customHeaders) throws DomainrobotApiException {
        if (body.getName() == null) {
            throw new IllegalArgumentException("Field Domain.name is missing.");
        }
        RequestEntity<Domain> request = buildRequestEntity(body, HttpMethod.POST,
                baseUrl + "/domain/" + body.getName() + "/_renew", customHeaders);
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
     * Sends a Domain transfer request.
     * 
     * @return ObjectJob
     * @throws DomainrobotApiException
     */
    public ObjectJob transfer(Domain body, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<Domain> request = buildRequestEntity(body, HttpMethod.POST, baseUrl + "/domain/_transfer",
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
     * Sends a Domain transfer request.
     * 
     * @return ObjectJob
     * @throws DomainrobotApiException
     */
    public void updateStatus(Domain body, Map<String, String> customHeaders) throws DomainrobotApiException {
        if (body.getName() == null) {
            throw new IllegalArgumentException("Field Domain.name is missing.");
        }
        RequestEntity<Domain> request = buildRequestEntity(body, HttpMethod.PUT,
                baseUrl + "/domain/" + body.getName() + "/_statusUpdate", customHeaders);
        try {
            template.exchange(request, JsonResponseDataObjectJob.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return;
    }

    /**
     * 
     * Sends a Domain restore list request.
     * 
     * @return List of DomainRestore
     * @throws DomainrobotApiException
     */
    public List<DomainRestore> restoreList(Query body, Map<String, String> customHeaders)
            throws DomainrobotApiException {
        RequestEntity<Query> request = buildRequestEntity(body, HttpMethod.POST, baseUrl + "/domain/restore/_search",
                customHeaders);
        ResponseEntity<JsonResponseDataDomainRestore> response = null;
        try {
            response = template.exchange(request, JsonResponseDataDomainRestore.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData();
    }

    /**
     * 
     * Sends a Domain restore request.
     * 
     * @return ObjectJob
     * @throws DomainrobotApiException
     */
    public ObjectJob restore(Domain body, Map<String, String> customHeaders) throws DomainrobotApiException {
        if (body.getName() == null) {
            throw new IllegalArgumentException("Field Domain.name is missing.");
        }
        RequestEntity<Domain> request = buildRequestEntity(body, HttpMethod.PUT,
                baseUrl + "/domain/" + body.getName() + "/_restore", customHeaders);
        ResponseEntity<JsonResponseDataObjectJob> response = null;
        try {
            response = template.exchange(request, JsonResponseDataObjectJob.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

}