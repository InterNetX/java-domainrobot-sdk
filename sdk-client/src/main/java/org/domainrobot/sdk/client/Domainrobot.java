package org.domainrobot.sdk.client;

import java.util.List;

import org.domainrobot.sdk.client.clients.CertificateClient;
import org.domainrobot.sdk.client.clients.ContactClient;
import org.domainrobot.sdk.client.clients.DomainCancelationClient;
import org.domainrobot.sdk.client.clients.DomainClient;
import org.domainrobot.sdk.client.clients.DomainStudioClient;
import org.domainrobot.sdk.client.clients.PollClient;
import org.domainrobot.sdk.client.clients.SslContactClient;
import org.domainrobot.sdk.client.clients.TransferOutClient;
import org.domainrobot.sdk.client.clients.TrustedApplicationClient;
import org.domainrobot.sdk.client.clients.ZoneClient;
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

	/**
	 * The zone service, containing all operations on zones.
	 */
	public ZoneClient zone;

	/**
	 * The ssl contact service, containing all operations on ssl contacts.
	 */
	public SslContactClient sslContact;

	/**
	 * The contact service, containing all operations on contact.
	 */
	public ContactClient contact;

	/**
	 * The domain service, containing all operations on domains.
	 */
	public DomainClient domain;

	/**
	 * The transfer out service, containing all operations on transfer outs.
	 */
	public TransferOutClient transferOut;

	/**
	 * The poll service, containing all operations on poll messages.
	 */
	public PollClient poll;

	/**
	 * The domain cancelation service, containing all operations on domain
	 * cancelations.
	 */
	public DomainCancelationClient domainCancelation;

	/**
	 * The trusted application service, containing all operations on trusted
	 * applications.
	 */
	public TrustedApplicationClient trustedApplication;

	private String version = "0.2.6";

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
	 * <b>Note:</b> Consider that each system has their own credentials!
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
		zone = new ZoneClient(user, context, password, baseUrl, version, getRestTemplate());
		sslContact = new SslContactClient(user, context, password, baseUrl, version, getRestTemplate());
		contact = new ContactClient(user, context, password, baseUrl, version, getRestTemplate());
		domain = new DomainClient(user, context, password, baseUrl, version, getRestTemplate());
		poll = new PollClient(user, context, password, baseUrl, version, getRestTemplate());
		domainCancelation = new DomainCancelationClient(user, context, password, baseUrl, version, getRestTemplate());
		transferOut = new TransferOutClient(user, context, password, baseUrl, version, getRestTemplate());
		trustedApplication = new TrustedApplicationClient(user, context, password, baseUrl, version, getRestTemplate());

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

	public void setZone(ZoneClient zone) {
		this.zone = zone;
	}

	public ZoneClient getZone() {
		return zone;
	}

	public SslContactClient getSslContact() {
		return sslContact;
	}

	public void setSslContact(SslContactClient sslContact) {
		this.sslContact = sslContact;
	}

	public ContactClient getContact() {
		return contact;
	}

	public void setContact(ContactClient contact) {
		this.contact = contact;
	}

	public DomainClient getDomain() {
		return domain;
	}

	public void setDomain(DomainClient domain) {
		this.domain = domain;
	}

	public TransferOutClient getTransferOut() {
		return transferOut;
	}

	public void setTransferOut(TransferOutClient transferOut) {
		this.transferOut = transferOut;
	}

	public PollClient getPoll() {
		return poll;
	}

	public void setPoll(PollClient poll) {
		this.poll = poll;
	}

	public DomainCancelationClient getDomainCancelation() {
		return domainCancelation;
	}

	public void setDomainCancelation(DomainCancelationClient domainCancelation) {
		this.domainCancelation = domainCancelation;
	}

	public TrustedApplicationClient getTrustedApplication() {
		return trustedApplication;
	}

	public void setTrustedApplication(TrustedApplicationClient trustedApplication) {
		this.trustedApplication = trustedApplication;
	}

	/**
	 * Setup a RestTemplate with default settings and the
	 * <b>MappingJackson2HttpMessageConverter</b> for json parsing.
	 * 
	 * @return RestTemplate
	 */
	private RestTemplate getRestTemplate() {
		RestTemplate template = new RestTemplate();
		List<HttpMessageConverter<?>> converters = template.getMessageConverters();
		converters.add(new MappingJackson2HttpMessageConverter());
		return template;
	}

}
