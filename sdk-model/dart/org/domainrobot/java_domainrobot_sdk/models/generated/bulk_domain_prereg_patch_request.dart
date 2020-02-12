part of swagger.api;

class BulkDomainPreregPatchRequest {
  /* The objects to process */
  List<DomainPrereg> objects = [];
  
/* The template for objects to process */
  DomainPrereg template = null;
  
/* The query to fetch the object instead of defined list */
  Query query = null;
  
  BulkDomainPreregPatchRequest();

  @override
  String toString() {
    return 'BulkDomainPreregPatchRequest[objects=$objects, template=$template, query=$query, ]';
  }

  BulkDomainPreregPatchRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      DomainPrereg.listFromJson(json['objects'])
;
    template =
      
      
      new DomainPrereg.fromJson(json['template'])
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

  static List<BulkDomainPreregPatchRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkDomainPreregPatchRequest>() : json.map((value) => new BulkDomainPreregPatchRequest.fromJson(value)).toList();
  }

  static Map<String, BulkDomainPreregPatchRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkDomainPreregPatchRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkDomainPreregPatchRequest.fromJson(value));
    }
    return map;
  }
}

