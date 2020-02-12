part of swagger.api;

class BulkDomainPreregPostRequest {
  /* The objects to process */
  List<DomainPrereg> objects = [];
  
/* The template for objects to process */
  DomainPrereg template = null;
  
  BulkDomainPreregPostRequest();

  @override
  String toString() {
    return 'BulkDomainPreregPostRequest[objects=$objects, template=$template, ]';
  }

  BulkDomainPreregPostRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      DomainPrereg.listFromJson(json['objects'])
;
    template =
      
      
      new DomainPrereg.fromJson(json['template'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'objects': objects,
      'template': template
     };
  }

  static List<BulkDomainPreregPostRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkDomainPreregPostRequest>() : json.map((value) => new BulkDomainPreregPostRequest.fromJson(value)).toList();
  }

  static Map<String, BulkDomainPreregPostRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkDomainPreregPostRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkDomainPreregPostRequest.fromJson(value));
    }
    return map;
  }
}

