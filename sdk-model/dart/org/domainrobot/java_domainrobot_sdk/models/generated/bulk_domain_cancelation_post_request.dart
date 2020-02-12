part of swagger.api;

class BulkDomainCancelationPostRequest {
  /* The objects to process */
  List<DomainCancelation> objects = [];
  
/* The template for objects to process */
  DomainCancelation template = null;
  
  BulkDomainCancelationPostRequest();

  @override
  String toString() {
    return 'BulkDomainCancelationPostRequest[objects=$objects, template=$template, ]';
  }

  BulkDomainCancelationPostRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      DomainCancelation.listFromJson(json['objects'])
;
    template =
      
      
      new DomainCancelation.fromJson(json['template'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'objects': objects,
      'template': template
     };
  }

  static List<BulkDomainCancelationPostRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkDomainCancelationPostRequest>() : json.map((value) => new BulkDomainCancelationPostRequest.fromJson(value)).toList();
  }

  static Map<String, BulkDomainCancelationPostRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkDomainCancelationPostRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkDomainCancelationPostRequest.fromJson(value));
    }
    return map;
  }
}

