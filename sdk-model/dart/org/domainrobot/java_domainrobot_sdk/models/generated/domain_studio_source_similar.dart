part of swagger.api;

class DomainStudioSourceSimilar {
  /* The services to fetch extra data from for this source */
  List<DomainEnvelopeSearchService> services = [];
  
/* The maximum amount of generated similar domains. */
  int max = null;
  
/* Selected tlds */
  List<String> tlds = [];
  
  DomainStudioSourceSimilar();

  @override
  String toString() {
    return 'DomainStudioSourceSimilar[services=$services, max=$max, tlds=$tlds, ]';
  }

  DomainStudioSourceSimilar.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    services =
      DomainEnvelopeSearchService.listFromJson(json['services'])
;
    max =
        json['max']
    ;
    tlds =
        (json['tlds'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'services': services,
      'max': max,
      'tlds': tlds
     };
  }

  static List<DomainStudioSourceSimilar> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainStudioSourceSimilar>() : json.map((value) => new DomainStudioSourceSimilar.fromJson(value)).toList();
  }

  static Map<String, DomainStudioSourceSimilar> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainStudioSourceSimilar>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainStudioSourceSimilar.fromJson(value));
    }
    return map;
  }
}

