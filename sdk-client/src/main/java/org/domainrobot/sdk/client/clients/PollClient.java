package org.domainrobot.sdk.client.clients;

import java.util.Map;

import org.domainrobot.sdk.models.DomainrobotApiException;
import org.domainrobot.sdk.models.generated.JsonResponseDataCertificate;
import org.domainrobot.sdk.models.generated.JsonResponseDataPollMessage;
import org.domainrobot.sdk.models.generated.PollMessage;
import org.springframework.http.HttpMethod;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

/**
 * Implementation of the poll specific API functions.
 * 
 * @author Daniel Linsenmeier
 */
public class PollClient extends AbstractClient {

    RestTemplate template;

    public PollClient(String userName, String context, String password, String baseUrl, String version,
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
     * Fetches the latest poll message. To receive the next message, the current
     * message needs to be confirmed via the confirm function.
     * 
     * The poll system works according to the "First In First Out (FIFO)" principle.
     * 
     * If there is no poll message to fetch, the method returns null.
     * 
     * @return PollMessage
     * @throws DomainrobotApiException
     */
    public PollMessage info(Map<String, String> customHeaders) throws DomainrobotApiException, Exception {
        RequestEntity<String> request = buildRequestEntity(HttpMethod.GET, baseUrl + "/poll", customHeaders);
        ResponseEntity<JsonResponseDataPollMessage> response = null;
        try {
            response = template.exchange(request, JsonResponseDataPollMessage.class);
        } catch (Exception e) {
            handleException(e);
        }
        if(response.getBody().getData() == null ) {
        	return null;
        }
        return response.getBody().getData().get(0);
    }

    /**
     * 
     * Confirms the PollMessage with the given id.
     * 
     * @throws DomainrobotApiException
     */
    public void confirm(int id, Map<String, String> customHeaders) throws DomainrobotApiException, Exception {
        RequestEntity<String> request = buildRequestEntity(HttpMethod.PUT, baseUrl + "/poll/" + id, customHeaders);

        try {
            template.exchange(request, JsonResponseDataCertificate.class);
        } catch (Exception e) {
            handleException(e);
        }
        return;
    }

}