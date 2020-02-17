package org.domainrobot.sdk.client.clients;

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

}