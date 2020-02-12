part of swagger.api;

class DomainStudioSources {
  /* The configuration for the initial source */
  DomainStudioSourceInitial initial = null;
  
/* The configuration for the suggestion source */
  DomainStudioSourceSuggestion suggestion = null;
  
/* The configuration for the premium source */
  DomainStudioSourcePremium premium = null;
  
/* The configuration for the geo source */
  DomainStudioSourceGeo geo = null;
  
/* The configuration for the similar source */
  DomainStudioSourceSimilar similar = null;
  
/* The configuration for the recommended source */
  DomainStudioSourceRecommended recommended = null;
  
/* The configuration for the custom source */
  DomainStudioSourceCustom custom = null;
  
  DomainStudioSources();

  @override
  String toString() {
    return 'DomainStudioSources[initial=$initial, suggestion=$suggestion, premium=$premium, geo=$geo, similar=$similar, recommended=$recommended, custom=$custom, ]';
  }

  DomainStudioSources.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    initial =
      
      
      new DomainStudioSourceInitial.fromJson(json['initial'])
;
    suggestion =
      
      
      new DomainStudioSourceSuggestion.fromJson(json['suggestion'])
;
    premium =
      
      
      new DomainStudioSourcePremium.fromJson(json['premium'])
;
    geo =
      
      
      new DomainStudioSourceGeo.fromJson(json['geo'])
;
    similar =
      
      
      new DomainStudioSourceSimilar.fromJson(json['similar'])
;
    recommended =
      
      
      new DomainStudioSourceRecommended.fromJson(json['recommended'])
;
    custom =
      
      
      new DomainStudioSourceCustom.fromJson(json['custom'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'initial': initial,
      'suggestion': suggestion,
      'premium': premium,
      'geo': geo,
      'similar': similar,
      'recommended': recommended,
      'custom': custom
     };
  }

  static List<DomainStudioSources> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainStudioSources>() : json.map((value) => new DomainStudioSources.fromJson(value)).toList();
  }

  static Map<String, DomainStudioSources> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainStudioSources>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainStudioSources.fromJson(value));
    }
    return map;
  }
}

