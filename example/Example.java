package example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.domainrobot.sdk.client.Domainrobot;
import org.domainrobot.sdk.models.DomainRobotHeaders;
import org.domainrobot.sdk.models.DomainrobotApiException;
import org.domainrobot.sdk.models.generated.DomainEnvelope;
import org.domainrobot.sdk.models.generated.DomainEnvelopeSearchRequest;
import org.domainrobot.sdk.models.generated.DomainStudioSourceInitial;
import org.domainrobot.sdk.models.generated.DomainStudioSources;

public class Example {

    public static void main(String[] args) {
        String user = "USER";
        String context = "CONTEXT";
        String password = "PASSWORD";
        String baseUrl = "BASEURL";
        Domainrobot sdk = new Domainrobot(user, context, password, baseUrl);

        DomainEnvelopeSearchRequest request = new DomainEnvelopeSearchRequest();
        request.setSearchToken("treehouse");

        DomainStudioSourceInitial initial = new DomainStudioSourceInitial();
        initial.addTldsItem("com").addTldsItem("de");

        DomainStudioSources sources = new DomainStudioSources();
        sources.setInitial(initial);

        request.setSources(sources);

        Map<String, String> customHeaders = new HashMap<String, String>();

        customHeaders.put(DomainRobotHeaders.DOMAINROBOT_HEADER_WEBSOCKET, "NONE");
        try {
            List<DomainEnvelope> data = sdk.getDomainStudio().search(request, customHeaders);
            for (DomainEnvelope d : data) {
                System.out.println(d.getDomain());
            }
        } catch (DomainrobotApiException e) {
            // Handle exception from the API
            System.out.println(e.getMessage());
            System.out.println(e.getErrorCode());
            System.out.println(e.getBody());
        } catch (Exception e) {
            // Handle unknown exception
            System.out.println("Unknown error " + e);
        }
    }
}