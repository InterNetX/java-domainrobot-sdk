package org.domainrobot.sdk.client.clients;

import java.util.List;
import java.util.Map;

import org.domainrobot.sdk.models.DomainrobotApiException;
import org.domainrobot.sdk.models.generated.JsonResponseDataJsonNoData;
import org.domainrobot.sdk.models.generated.JsonResponseDataTransferOut;
import org.domainrobot.sdk.models.generated.PollMessage;
import org.domainrobot.sdk.models.generated.Query;
import org.domainrobot.sdk.models.generated.TransferAnswer;
import org.domainrobot.sdk.models.generated.TransferOut;
import org.springframework.http.HttpMethod;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

/**
 * Implementation of the transfer out specific API functions.
 * 
 * @author Daniel Linsenmeier
 */
public class TransferOutClient extends AbstractClient {

    RestTemplate template;

    public TransferOutClient(String userName, String context, String password, String baseUrl, String version,
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
     * Sends a TransferOut list request.
     * 
     * @return List of TransferOut
     * @throws DomainrobotApiException
     */
    public List<TransferOut> list(Query body, Map<String, String> customHeaders) throws DomainrobotApiException {
        RequestEntity<Query> request = buildRequestEntity(body, HttpMethod.GET, baseUrl + "/transferout/_search",
                customHeaders);
        ResponseEntity<JsonResponseDataTransferOut> response = null;
        try {
            response = template.exchange(request, JsonResponseDataTransferOut.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return response.getBody().getData();
    }

    /**
     * 
     * Answer a transfer for the given domain with the given answer.
     * 
     * @throws DomainrobotApiException
     */
    public void answer(String domain, TransferAnswer answer, Map<String, String> customHeaders)
            throws DomainrobotApiException {
        String transformedAnswer = "";
        if (answer == TransferAnswer.ACK) {
            transformedAnswer = "ack";
        } else {
            transformedAnswer = "nack";
        }

        RequestEntity<PollMessage> request = buildRequestEntity(HttpMethod.PUT,
                baseUrl + "/transferout/" + domain + "/" + transformedAnswer, customHeaders);

        try {
            template.exchange(request, JsonResponseDataJsonNoData.class);
        } catch (HttpClientErrorException e) {
            handleException(e);
        }
        return;
    }

}