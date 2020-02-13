package org.domainrobot.sdk.client;

import java.util.List;

import org.domainrobot.sdk.client.clients.CertificateClient;
import org.domainrobot.sdk.client.clients.DomainStudioClient;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.client.RestTemplate;

/**
 * 
 * Main provider for the DomainRobot API.
 * 
 * @author Daniel Linsenmeier
 */
public class Domainrobot {

	/**
	 * The certificate service, containing all operations on certificates.
	 */
	public CertificateClient certificate;

	/**
	 * The domainstudio service, containing all operations for the domainstudio.
	 */
	public DomainStudioClient domainStudio;

	private String version = "0.1.0";

	/**
	 * <p>
	 * Creates a new instance of the domainrobot provider, that gives access to the
	 * json api.
	 * </p>
	 * <p>
	 * You can use one of the following base urls :
	 * <li>Livesystem: https://api.autodns.com/v1</li>
	 * <li>Demosystem: https://api.demo.autodns.com/v1</li>
	 * </p>
	 * <p>
	 * <b>Note:</b> Consider that each system has normally their own credentials!
	 * </p>
	 * 
	 * @param user     : The user for the api
	 * @param context  : The context for the user. Normally "4"
	 * @param password : The password of the user
	 * @param baseUrl  : The base url for the api
	 */
	public Domainrobot(String user, String context, String password, String baseUrl) {
		certificate = new CertificateClient(user, context, password, baseUrl, version, getRestTemplate());
		domainStudio = new DomainStudioClient(user, context, password, baseUrl, version, getRestTemplate());
	}

	public CertificateClient getCertificate() {
		return certificate;
	}

	public void setCertificate(CertificateClient certificate) {
		this.certificate = certificate;
	}

	public DomainStudioClient getDomainStudio() {
		return domainStudio;
	}

	public void setDomainStudio(DomainStudioClient domainStudio) {
		this.domainStudio = domainStudio;
	}

	/**
	 * Setup a RestTemplate with Jackson Json mapper.
	 * 
	 * @return
	 */
	private RestTemplate getRestTemplate() {
		RestTemplate template = new RestTemplate();
		List<HttpMessageConverter<?>> converters = template.getMessageConverters();
		converters.add(new MappingJackson2HttpMessageConverter());
		return template;
	}

}
