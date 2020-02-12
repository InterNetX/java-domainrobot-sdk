part of swagger.api;

class DomainServicesUpdate {
  /* The name of the domain. */
  List<Domain> domains = [];
  
/* The services to add. */
  DomainServices servicesAdd = null;
  
/* The services to remove. */
  DomainServices servicesRem = null;
  
  DomainServicesUpdate();

  @override
  String toString() {
    return 'DomainServicesUpdate[domains=$domains, servicesAdd=$servicesAdd, servicesRem=$servicesRem, ]';
  }

  DomainServicesUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    domains =
      Domain.listFromJson(json['domains'])
;
    servicesAdd =
      
      
      new DomainServices.fromJson(json['servicesAdd'])
;
    servicesRem =
      
      
      new DomainServices.fromJson(json['servicesRem'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'domains': domains,
      'servicesAdd': servicesAdd,
      'servicesRem': servicesRem
     };
  }

  static List<DomainServicesUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainServicesUpdate>() : json.map((value) => new DomainServicesUpdate.fromJson(value)).toList();
  }

  static Map<String, DomainServicesUpdate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainServicesUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainServicesUpdate.fromJson(value));
    }
    return map;
  }
}

