part of swagger.api;

class DomainStudioSourceGeo {
  /* The services to fetch extra data from for this source */
  List<DomainEnvelopeSearchService> services = [];
  
/* The maximum amount of fetched geo domains. */
  int max = null;
  
  DomainStudioSourceGeo();

  @override
  String toString() {
    return 'DomainStudioSourceGeo[services=$services, max=$max, ]';
  }

  DomainStudioSourceGeo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    services =
      DomainEnvelopeSearchService.listFromJson(json['services'])
;
    max =
        json['max']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'services': services,
      'max': max
     };
  }

  static List<DomainStudioSourceGeo> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainStudioSourceGeo>() : json.map((value) => new DomainStudioSourceGeo.fromJson(value)).toList();
  }

  static Map<String, DomainStudioSourceGeo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainStudioSourceGeo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainStudioSourceGeo.fromJson(value));
    }
    return map;
  }
}

