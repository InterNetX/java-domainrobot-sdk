package org.domainrobot.sdk.models;

import java.util.Map;

public class DomainrobotApiException extends Exception {

	private static final long serialVersionUID = 63128882079106280L;

	String message;

	String body;

	String errorCode;

	String stid;

	Map<String, String> headers;

	public DomainrobotApiException(String message, String body, String errorCode, String stid,
			Map<String, String> map) {
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public String getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}

	public String getStid() {
		return stid;
	}

	public void setStid(String stid) {
		this.stid = stid;
	}

	public Map<String, String> getHeaders() {
		return headers;
	}

	public void setHeaders(Map<String, String> headers) {
		this.headers = headers;
	}

}
