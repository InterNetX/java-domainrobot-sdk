part of swagger.api;

class DomainStudioService {
  /* The data for the whois service */
  WhoisServiceData whois = null;
  
/* The data for the price service */
  PriceServiceData price = null;
  
/* The data for the estimation service */
  EstimationServiceData estimation = null;
  
  DomainStudioService();

  @override
  String toString() {
    return 'DomainStudioService[whois=$whois, price=$price, estimation=$estimation, ]';
  }

  DomainStudioService.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    whois =
      
      
      new WhoisServiceData.fromJson(json['whois'])
;
    price =
      
      
      new PriceServiceData.fromJson(json['price'])
;
    estimation =
      
      
      new EstimationServiceData.fromJson(json['estimation'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'whois': whois,
      'price': price,
      'estimation': estimation
     };
  }

  static List<DomainStudioService> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainStudioService>() : json.map((value) => new DomainStudioService.fromJson(value)).toList();
  }

  static Map<String, DomainStudioService> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainStudioService>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainStudioService.fromJson(value));
    }
    return map;
  }
}

