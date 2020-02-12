package org.domainrobot.sdk.models;

import java.util.Map;

public class DomainrobotApiException extends Exception {

	private static final long serialVersionUID = 63128882079106280L;

	String message;

	String body;

	String errorCode;

	String stid;

	Map<String, String> headers;

	public DomainrobotApiException(String message, String body, String errorCode, String stid, Map<String, String> map) {
		this.message = message;
		this.body = body;
		this.errorCode = errorCode;
		this.stid = stid;
		this.headers = map;
	}

	@Override
	public String toString() {
		return stid + " " + errorCode + " : " + message;
	}

}
