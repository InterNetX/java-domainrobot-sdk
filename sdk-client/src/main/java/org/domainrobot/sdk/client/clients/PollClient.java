package org.domainrobot.sdk.client.clients;

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

}