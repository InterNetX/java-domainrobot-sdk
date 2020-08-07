package org.domainrobot.sdk.client.clients;

import java.util.List;
import java.util.Map;

import org.domainrobot.sdk.models.DomainrobotApiException;
import org.domainrobot.sdk.models.generated.Domain;
import org.domainrobot.sdk.models.generated.DomainRestore;
import org.domainrobot.sdk.models.generated.Job;
import org.domainrobot.sdk.models.generated.JsonResponseDataDomain;
import org.domainrobot.sdk.models.generated.JsonResponseDataDomainRestore;
import org.domainrobot.sdk.models.JsonResponseDataJob;
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
     * @return Job
     * @throws DomainrobotApiException
     */
    public Job create(Domain body, Map<String, String> customHeaders) throws DomainrobotApiException, Exception {
        RequestEntity<String> request = buildRequestEntity(body, HttpMethod.POST, baseUrl + "/domain", customHeaders);
        ResponseEntity<JsonResponseDataJob> response = null;
        try {
            response = template.exchange(request, JsonResponseDataJob.class);
        } catch (Exception e) {
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
    public ObjectJob update(Domain body, Map<String, String> customHeaders) throws DomainrobotApiException, Exception {
        if (body.getName() == null) {
            throw new IllegalArgumentException("Field Domain.name is missing.");
        }
        RequestEntity<String> request = buildRequestEntity(body, HttpMethod.PUT, baseUrl + "/domain/" + body.getName(),
                customHeaders);
        ResponseEntity<JsonResponseDataObjectJob> response = null;
        try {
            response = template.exchange(request, JsonResponseDataObjectJob.class);
        } catch (Exception e) {
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
    public Domain info(String domain, Map<String, String> customHeaders) throws DomainrobotApiException, Exception {
        RequestEntity<String> request = buildRequestEntity(HttpMethod.GET, baseUrl + "/domain/" + domain,
                customHeaders);
        ResponseEntity<JsonResponseDataDomain> response = null;
        try {
            response = template.exchange(request, JsonResponseDataDomain.class);
        } catch (Exception e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Sends a Domain list request.
     * 
     * <br>
     * <br>
     * The following keys can be used for filtering, ordering or fetching additional
     * data via query parameter:<br>
     * 
     * <ul>
     * <li>sld</li>
     * <li>subtld</li>
     * <li>tld</li>
     * <li>status</li>
     * <li>authinfo</li>
     * <li>expire</li>
     * <li>comment</li>
     * <li>ownerc</li>
     * <li>updated</li>
     * <li>zonec</li>
     * <li>nserver</li>
     * <li>techc</li>
     * <li>adminc</li>
     * <li>certificate</li>
     * <li>created</li>
     * <li>autorenew</li>
     * </ul>
     * <br>
     * <br>
     * 
     * @return List of Domain
     * @throws DomainrobotApiException
     */
    public List<Domain> list(Query body, Map<String, String> customHeaders, Map<String, Object> queryParameters)
            throws DomainrobotApiException, Exception {
        RequestEntity<String> request = buildRequestEntity(body, HttpMethod.POST, baseUrl + "/domain/_search",
                customHeaders, queryParameters);
        ResponseEntity<JsonResponseDataDomain> response = null;
        try {
            response = template.exchange(request, JsonResponseDataDomain.class);
        } catch (Exception e) {
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
    public Domain createAuthinfo1(String domain, Map<String, String> customHeaders)
            throws DomainrobotApiException, Exception {
        RequestEntity<String> request = buildRequestEntity(HttpMethod.POST,
                baseUrl + "/domain/" + domain + "/_authinfo1", customHeaders);
        ResponseEntity<JsonResponseDataDomain> response = null;
        try {
            response = template.exchange(request, JsonResponseDataDomain.class);
        } catch (Exception e) {
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
    public void deleteAuthinfo1(String domain, Map<String, String> customHeaders)
            throws DomainrobotApiException, Exception {
        RequestEntity<String> request = buildRequestEntity(HttpMethod.DELETE,
                baseUrl + "/domain/" + domain + "/_authinfo1", customHeaders);
        try {
            template.exchange(request, JsonResponseDataDomain.class);
        } catch (Exception e) {
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
    public void createAuthinfo2(String domain, Map<String, String> customHeaders)
            throws DomainrobotApiException, Exception {
        RequestEntity<String> request = buildRequestEntity(HttpMethod.POST,
                baseUrl + "/domain/" + domain + "/_authinfo2", customHeaders);
        try {
            template.exchange(request, JsonResponseDataDomain.class);
        } catch (Exception e) {
            handleException(e);
        }
        return;
    }

    /**
     * 
     * Sends a Domain renew request.
     * 
     * @return ObjectJob
     * @throws DomainrobotApiException
     */
    public ObjectJob renew(Domain body, Map<String, String> customHeaders) throws DomainrobotApiException, Exception {
        if (body.getName() == null) {
            throw new IllegalArgumentException("Field Domain.name is missing.");
        }
        RequestEntity<String> request = buildRequestEntity(body, HttpMethod.POST,
                baseUrl + "/domain/" + body.getName() + "/_renew", customHeaders);
        ResponseEntity<JsonResponseDataObjectJob> response = null;
        try {
            response = template.exchange(request, JsonResponseDataObjectJob.class);
        } catch (Exception e) {
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
    public ObjectJob transfer(Domain body, Map<String, String> customHeaders)
            throws DomainrobotApiException, Exception {
        RequestEntity<String> request = buildRequestEntity(body, HttpMethod.POST, baseUrl + "/domain/_transfer",
                customHeaders);
        ResponseEntity<JsonResponseDataObjectJob> response = null;
        try {
            response = template.exchange(request, JsonResponseDataObjectJob.class);
        } catch (Exception e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Sends a Domain updateStatus request.
     * 
     * @return ObjectJob
     * @throws DomainrobotApiException
     */
    public ObjectJob updateStatus(Domain body, Map<String, String> customHeaders)
            throws DomainrobotApiException, Exception {
        if (body.getName() == null) {
            throw new IllegalArgumentException("Field Domain.name is missing.");
        }
        RequestEntity<String> request = buildRequestEntity(body, HttpMethod.PUT,
                baseUrl + "/domain/" + body.getName() + "/_statusUpdate", customHeaders);
        ResponseEntity<JsonResponseDataObjectJob> response = null;
        try {
            response = template.exchange(request, JsonResponseDataObjectJob.class);
        } catch (Exception e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Sends a Domain restore list request.
     * 
     * <br>
     * <br>
     * The following keys can be used for filtering, ordering or fetching additional
     * data via query parameter:<br>
     * 
     * <ul>
     * <li>parking</li>
     * <li>certificate</li>
     * <li>adminc</li>
     * <li>cancelation</li>
     * <li>action</li>
     * <li>zonec</li>
     * <li>nserver</li>
     * <li>techc</li>
     * <li>nsentry</li>
     * <li>dnssec</li>
     * <li>period</li>
     * <li>created</li>
     * <li>sld</li>
     * <li>tld</li>
     * <li>subtld</li>
     * <li>deleted</li>
     * <li>autorenew</li>
     * <li>expire</li>
     * <li>domainsafe</li>
     * <li>comment</li>
     * <li>ownerc</li>
     * <li>updated</li>
     * <li>remarks</li>
     * <li>authinfo</li>
     * <li>status</li>
     * </ul>
     * <br>
     * <br>
     * 
     * @return List of DomainRestore
     * @throws DomainrobotApiException
     */
    public List<DomainRestore> restoreList(Query body, Map<String, String> customHeaders,
            Map<String, Object> queryParameters) throws DomainrobotApiException, Exception {
        RequestEntity<String> request = buildRequestEntity(body, HttpMethod.POST, baseUrl + "/domain/restore/_search",
                customHeaders, queryParameters);
        ResponseEntity<JsonResponseDataDomainRestore> response = null;
        try {
            response = template.exchange(request, JsonResponseDataDomainRestore.class);
        } catch (Exception e) {
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
    public ObjectJob restore(Domain body, Map<String, String> customHeaders) throws DomainrobotApiException, Exception {
        if (body.getName() == null) {
            throw new IllegalArgumentException("Field Domain.name is missing.");
        }
        RequestEntity<String> request = buildRequestEntity(body, HttpMethod.PUT,
                baseUrl + "/domain/" + body.getName() + "/_restore", customHeaders);
        ResponseEntity<JsonResponseDataObjectJob> response = null;
        try {
            response = template.exchange(request, JsonResponseDataObjectJob.class);
        } catch (Exception e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

}
