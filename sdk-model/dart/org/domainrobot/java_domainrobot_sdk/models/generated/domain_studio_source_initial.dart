part of swagger.api;

class DomainStudioSourceInitial {
  /* The services to fetch extra data from for this source */
  List<DomainEnvelopeSearchService> services = [];
  
/* Selected tlds */
  List<String> tlds = [];
  
  DomainStudioSourceInitial();

  @override
  String toString() {
    return 'DomainStudioSourceInitial[services=$services, tlds=$tlds, ]';
  }

  DomainStudioSourceInitial.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    services =
      DomainEnvelopeSearchService.listFromJson(json['services'])
;
    tlds =
        (json['tlds'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'services': services,
      'tlds': tlds
     };
  }

  static List<DomainStudioSourceInitial> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainStudioSourceInitial>() : json.map((value) => new DomainStudioSourceInitial.fromJson(value)).toList();
  }

  static Map<String, DomainStudioSourceInitial> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainStudioSourceInitial>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainStudioSourceInitial.fromJson(value));
    }
    return map;
  }
}

