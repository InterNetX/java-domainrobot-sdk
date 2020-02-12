part of swagger.api;

class DomainStudioSourceCustom {
  /* The services to fetch extra data from for this source */
  List<DomainEnvelopeSearchService> services = [];
  
/* Custom list of domains */
  List<String> domains = [];
  
  DomainStudioSourceCustom();

  @override
  String toString() {
    return 'DomainStudioSourceCustom[services=$services, domains=$domains, ]';
  }

  DomainStudioSourceCustom.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    services =
      DomainEnvelopeSearchService.listFromJson(json['services'])
;
    domains =
        (json['domains'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'services': services,
      'domains': domains
     };
  }

  static List<DomainStudioSourceCustom> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainStudioSourceCustom>() : json.map((value) => new DomainStudioSourceCustom.fromJson(value)).toList();
  }

  static Map<String, DomainStudioSourceCustom> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainStudioSourceCustom>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainStudioSourceCustom.fromJson(value));
    }
    return map;
  }
}

