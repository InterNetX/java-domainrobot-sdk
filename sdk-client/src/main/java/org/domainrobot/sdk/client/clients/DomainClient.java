package org.domainrobot.sdk.client.clients;

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

}