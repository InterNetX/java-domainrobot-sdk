part of swagger.api;

class DomainEnvelope {
  /* The domain */
  String domain = null;
  
/* The unicode domain name */
  String idn = null;
  
/* Source */
  DomainStudioDomainSource source = null;
  
/* Source */
  DomainStudioService services = null;
  
/* Defines if the user already owns this domain. */
  bool debugTime = null;
  
  DomainEnvelope();

  @override
  String toString() {
    return 'DomainEnvelope[domain=$domain, idn=$idn, source=$source, services=$services, debugTime=$debugTime, ]';
  }

  DomainEnvelope.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    domain =
        json['domain']
    ;
    idn =
        json['idn']
    ;
    source =
      
      
      new DomainStudioDomainSource.fromJson(json['source'])
;
    services =
      
      
      new DomainStudioService.fromJson(json['services'])
;
    debugTime =
        json['debugTime']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'domain': domain,
      'idn': idn,
      'source': source,
      'services': services,
      'debugTime': debugTime
     };
  }

  static List<DomainEnvelope> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainEnvelope>() : json.map((value) => new DomainEnvelope.fromJson(value)).toList();
  }

  static Map<String, DomainEnvelope> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainEnvelope>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainEnvelope.fromJson(value));
    }
    return map;
  }
}

