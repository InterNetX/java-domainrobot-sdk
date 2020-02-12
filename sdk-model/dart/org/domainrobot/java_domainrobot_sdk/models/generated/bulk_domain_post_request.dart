part of swagger.api;

class BulkDomainPostRequest {
  /* The objects to process */
  List<Domain> objects = [];
  
/* The template for objects to process */
  Domain template = null;
  
  BulkDomainPostRequest();

  @override
  String toString() {
    return 'BulkDomainPostRequest[objects=$objects, template=$template, ]';
  }

  BulkDomainPostRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      Domain.listFromJson(json['objects'])
;
    template =
      
      
      new Domain.fromJson(json['template'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'objects': objects,
      'template': template
     };
  }

  static List<BulkDomainPostRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkDomainPostRequest>() : json.map((value) => new BulkDomainPostRequest.fromJson(value)).toList();
  }

  static Map<String, BulkDomainPostRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkDomainPostRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkDomainPostRequest.fromJson(value));
    }
    return map;
  }
}

