part of swagger.api;

class DomainStudioSourceRecommended {
  /* The services to fetch extra data from for this source */
  List<DomainEnvelopeSearchService> services = [];
  
/* The maximum amount of generated similar domains. */
  int max = null;
  
  DomainStudioSourceRecommended();

  @override
  String toString() {
    return 'DomainStudioSourceRecommended[services=$services, max=$max, ]';
  }

  DomainStudioSourceRecommended.fromJson(Map<String, dynamic> json) {
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

  static List<DomainStudioSourceRecommended> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainStudioSourceRecommended>() : json.map((value) => new DomainStudioSourceRecommended.fromJson(value)).toList();
  }

  static Map<String, DomainStudioSourceRecommended> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainStudioSourceRecommended>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainStudioSourceRecommended.fromJson(value));
    }
    return map;
  }
}

