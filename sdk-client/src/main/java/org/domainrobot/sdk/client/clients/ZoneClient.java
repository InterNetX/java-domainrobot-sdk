package org.domainrobot.sdk.client.clients;

import java.util.List;
import java.util.Map;

import org.domainrobot.sdk.models.DomainrobotApiException;
import org.domainrobot.sdk.models.generated.JsonResponseDataJsonNoData;
import org.domainrobot.sdk.models.generated.JsonResponseDataZone;
import org.domainrobot.sdk.models.generated.Query;
import org.domainrobot.sdk.models.generated.Zone;
import org.domainrobot.sdk.models.generated.ZoneStream;
import org.springframework.http.HttpMethod;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

/**
 * Implementation of the zone specific API functions.
 * 
 * @author Daniel Linsenmeier
 */
public class ZoneClient extends AbstractClient {

    RestTemplate template;

    public ZoneClient(String userName, String context, String password, String baseUrl, String version,
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
     * Sends a zone create request.
     * 
     * @return Zone
     * @throws DomainrobotApiException
     */
    public Zone create(Zone body, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<Zone> request = buildRequestEntity(body, HttpMethod.POST, baseUrl + "/zone", customHeaders);
        ResponseEntity<JsonResponseDataZone> response = null;
        try {
            response = template.exchange(request, JsonResponseDataZone.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Sends a zone update request.
     * 
     * @return Zone
     * @throws DomainrobotApiException
     * @throws IllegalArgumentException If the origin or virtualNameServer is
     *                                  missing.
     */
    public Zone update(Zone body, Map<String, String> customHeaders) throws DomainrobotApiException {
        if (body.getOrigin() == null) {
            throw new IllegalArgumentException("Field Zone.origin is missing.");
        }
        if (body.getVirtualNameServer() == null) {
            throw new IllegalArgumentException("Field Zone.virtualNameServer is missing.");
        }
        RequestEntity<Zone> request = buildRequestEntity(body, HttpMethod.PUT,
                baseUrl + "/zone/" + body.getOrigin() + "/" + body.getVirtualNameServer(), customHeaders);
        ResponseEntity<JsonResponseDataZone> response = null;
        try {
            response = template.exchange(request, JsonResponseDataZone.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Sends a Zone delete request.
     * 
     * @throws DomainrobotApiException
     */
    public void delete(String origin, String virtualNameServer, Map<String, String> customHeaders)
            throws DomainrobotApiException {
        RequestEntity<Zone> request = buildRequestEntity(HttpMethod.DELETE,
                baseUrl + "/zone/" + origin + "/" + virtualNameServer, customHeaders);
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
     * @return Zone
     * @throws DomainrobotApiException
     */
    public Zone info(String origin, String virtualNameServer, Map<String, String> customHeaders)
            throws DomainrobotApiException {
        RequestEntity<Zone> request = buildRequestEntity(HttpMethod.GET,
                baseUrl + "/zone/" + origin + "/" + virtualNameServer, customHeaders);
        ResponseEntity<JsonResponseDataZone> response = null;
        try {
            response = template.exchange(request, JsonResponseDataZone.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Sends a zone list request.
     * 
     * <br>
     * <br>
     * The following keys can be used for filtering, ordering or fetching additional
     * data via query parameter:<br>
     * 
     * <ul>
     * <li>dnssec</li>
     * <li>created</li>
     * <li>mainip</li>
     * <li>secondary1</li>
     * <li>secondary2</li>
     * <li>secondary3</li>
     * <li>secondary4</li>
     * <li>secondary5</li>
     * <li>secondary6</li>
     * <li>secondary7</li>
     * <li>virtualNameServer</li>
     * <li>domainsafe</li>
     * <li>name</li>
     * <li>comment</li>
     * <li>updated</li>
     * <li>action</li>
     * <li>primary</li>
     * <li>changed</li>
     * </ul>
     * <br>
     * <br>
     * 
     * @return List of Zone
     * @throws DomainrobotApiException
     */
    public List<Zone> list(Query body, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<Query> request = buildRequestEntity(body, HttpMethod.GET, baseUrl + "/zone/_search",
                customHeaders);
        ResponseEntity<JsonResponseDataZone> response = null;
        try {
            response = template.exchange(request, JsonResponseDataZone.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData();
    }

    /**
     * 
     * Sends a zone stream request to add and/or remove records for every zone with
     * the given origin.
     * 
     * @throws DomainrobotApiException
     */
    public void stream(String origin, ZoneStream body, Map<String, String> customHeaders)
            throws DomainrobotApiException {
        RequestEntity<ZoneStream> request = buildRequestEntity(body, HttpMethod.POST,
                baseUrl + "/zone/" + origin + "/_stream", customHeaders);
        try {
            template.exchange(request, JsonResponseDataJsonNoData.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return;
    }

    /**
     * 
     * Imports an existing zone.
     * 
     * @return Zone
     * @throws DomainrobotApiException
     * @throws IllegalArgumentException If the origin or virtualNameServer is
     *                                  missing.
     */
    public Zone importZone(Zone body, Map<String, String> customHeaders) throws DomainrobotApiException {
        if (body.getOrigin() == null) {
            throw new IllegalArgumentException("Field Zone.origin is missing.");
        }
        if (body.getVirtualNameServer() == null) {
            throw new IllegalArgumentException("Field Zone.virtualNameServer is missing.");
        }
        RequestEntity<Zone> request = buildRequestEntity(body, HttpMethod.POST,
                baseUrl + "/zone/" + body.getOrigin() + "/" + body.getVirtualNameServer() + "/_import", customHeaders);
        ResponseEntity<JsonResponseDataZone> response = null;
        try {
            response = template.exchange(request, JsonResponseDataZone.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData().get(0);
    }

}