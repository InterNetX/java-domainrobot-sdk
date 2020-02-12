part of swagger.api;

class BulkDomainCancelationPatchRequest {
  /* The objects to process */
  List<DomainCancelation> objects = [];
  
/* The template for objects to process */
  DomainCancelation template = null;
  
/* The query to fetch the object instead of defined list */
  Query query = null;
  
  BulkDomainCancelationPatchRequest();

  @override
  String toString() {
    return 'BulkDomainCancelationPatchRequest[objects=$objects, template=$template, query=$query, ]';
  }

  BulkDomainCancelationPatchRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      DomainCancelation.listFromJson(json['objects'])
;
    template =
      
      
      new DomainCancelation.fromJson(json['template'])
;
    query =
      
      
      new Query.fromJson(json['query'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'objects': objects,
      'template': template,
      'query': query
     };
  }

  static List<BulkDomainCancelationPatchRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkDomainCancelationPatchRequest>() : json.map((value) => new BulkDomainCancelationPatchRequest.fromJson(value)).toList();
  }

  static Map<String, BulkDomainCancelationPatchRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkDomainCancelationPatchRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkDomainCancelationPatchRequest.fromJson(value));
    }
    return map;
  }
}

