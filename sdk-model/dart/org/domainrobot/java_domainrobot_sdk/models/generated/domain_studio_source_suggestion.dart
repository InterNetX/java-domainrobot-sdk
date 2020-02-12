part of swagger.api;

class DomainStudioSourceSuggestion {
  /* The services to fetch extra data from for this source */
  List<DomainEnvelopeSearchService> services = [];
  
/* Suggestion language */
  String language = null;
  
/* Maximum fetched suggested domains */
  int max = null;
  
/* Maximum sld length for suggested domains */
  int maxSldLength = null;
  
/* Suggested domains with dash */
  bool useDash = null;
  
/* Suggested domains with numbers */
  bool useNumber = null;
  
/* Suggested domains with idn */
  bool useIdn = null;
  
/* Selected tlds */
  List<String> tlds = [];
  
  DomainStudioSourceSuggestion();

  @override
  String toString() {
    return 'DomainStudioSourceSuggestion[services=$services, language=$language, max=$max, maxSldLength=$maxSldLength, useDash=$useDash, useNumber=$useNumber, useIdn=$useIdn, tlds=$tlds, ]';
  }

  DomainStudioSourceSuggestion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    services =
      DomainEnvelopeSearchService.listFromJson(json['services'])
;
    language =
        json['language']
    ;
    max =
        json['max']
    ;
    maxSldLength =
        json['maxSldLength']
    ;
    useDash =
        json['useDash']
    ;
    useNumber =
        json['useNumber']
    ;
    useIdn =
        json['useIdn']
    ;
    tlds =
        (json['tlds'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'services': services,
      'language': language,
      'max': max,
      'maxSldLength': maxSldLength,
      'useDash': useDash,
      'useNumber': useNumber,
      'useIdn': useIdn,
      'tlds': tlds
     };
  }

  static List<DomainStudioSourceSuggestion> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainStudioSourceSuggestion>() : json.map((value) => new DomainStudioSourceSuggestion.fromJson(value)).toList();
  }

  static Map<String, DomainStudioSourceSuggestion> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainStudioSourceSuggestion>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainStudioSourceSuggestion.fromJson(value));
    }
    return map;
  }
}

