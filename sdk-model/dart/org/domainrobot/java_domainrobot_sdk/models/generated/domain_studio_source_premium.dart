part of swagger.api;

class DomainStudioSourcePremium {
  /* The services to fetch extra data from for this source */
  List<DomainEnvelopeSearchService> services = [];
  
/* Promo tlds */
  List<String> promoTlds = [];
  
/* Top tlds */
  List<String> topTlds = [];
  
/* The maximum amount of fetched premium and market domains. */
  int max = null;
  
  DomainStudioSourcePremium();

  @override
  String toString() {
    return 'DomainStudioSourcePremium[services=$services, promoTlds=$promoTlds, topTlds=$topTlds, max=$max, ]';
  }

  DomainStudioSourcePremium.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    services =
      DomainEnvelopeSearchService.listFromJson(json['services'])
;
    promoTlds =
        (json['promoTlds'] as List).map((item) => item as String).toList()
    ;
    topTlds =
        (json['topTlds'] as List).map((item) => item as String).toList()
    ;
    max =
        json['max']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'services': services,
      'promoTlds': promoTlds,
      'topTlds': topTlds,
      'max': max
     };
  }

  static List<DomainStudioSourcePremium> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainStudioSourcePremium>() : json.map((value) => new DomainStudioSourcePremium.fromJson(value)).toList();
  }

  static Map<String, DomainStudioSourcePremium> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainStudioSourcePremium>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainStudioSourcePremium.fromJson(value));
    }
    return map;
  }
}

