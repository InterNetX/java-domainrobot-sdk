part of swagger.api;

class DomainEnvelopeSearchRequest {
  /* Domain search token */
  String searchToken = null;
  
/* The currency for every price lookup */
  String currency = null;
  
/* Activates debugging */
  bool debug = null;
  
/* Activates the check for each domain whether the user already owns it. */
  bool checkPortfolio = null;
  
/* Wrapper for the configuration for each source */
  DomainStudioSources sources = null;
  
/* The ip of the client */
  String clientIp = null;
  
  DomainEnvelopeSearchRequest();

  @override
  String toString() {
    return 'DomainEnvelopeSearchRequest[searchToken=$searchToken, currency=$currency, debug=$debug, checkPortfolio=$checkPortfolio, sources=$sources, clientIp=$clientIp, ]';
  }

  DomainEnvelopeSearchRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    searchToken =
        json['searchToken']
    ;
    currency =
        json['currency']
    ;
    debug =
        json['debug']
    ;
    checkPortfolio =
        json['checkPortfolio']
    ;
    sources =
      
      
      new DomainStudioSources.fromJson(json['sources'])
;
    clientIp =
        json['clientIp']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'searchToken': searchToken,
      'currency': currency,
      'debug': debug,
      'checkPortfolio': checkPortfolio,
      'sources': sources,
      'clientIp': clientIp
     };
  }

  static List<DomainEnvelopeSearchRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainEnvelopeSearchRequest>() : json.map((value) => new DomainEnvelopeSearchRequest.fromJson(value)).toList();
  }

  static Map<String, DomainEnvelopeSearchRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainEnvelopeSearchRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainEnvelopeSearchRequest.fromJson(value));
    }
    return map;
  }
}

