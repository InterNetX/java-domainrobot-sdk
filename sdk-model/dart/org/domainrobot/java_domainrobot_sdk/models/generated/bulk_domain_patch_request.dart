part of swagger.api;

class BulkDomainPatchRequest {
  /* The objects to process */
  List<Domain> objects = [];
  
/* The template for objects to process */
  Domain template = null;
  
/* The query to fetch the object instead of defined list */
  Query query = null;
  
/* The modifer to apply on the objects */
  List<Modifier> modifiers = [];
  
  BulkDomainPatchRequest();

  @override
  String toString() {
    return 'BulkDomainPatchRequest[objects=$objects, template=$template, query=$query, modifiers=$modifiers, ]';
  }

  BulkDomainPatchRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      Domain.listFromJson(json['objects'])
;
    template =
      
      
      new Domain.fromJson(json['template'])
;
    query =
      
      
      new Query.fromJson(json['query'])
;
    modifiers =
      Modifier.listFromJson(json['modifiers'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'objects': objects,
      'template': template,
      'query': query,
      'modifiers': modifiers
     };
  }

  static List<BulkDomainPatchRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkDomainPatchRequest>() : json.map((value) => new BulkDomainPatchRequest.fromJson(value)).toList();
  }

  static Map<String, BulkDomainPatchRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkDomainPatchRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkDomainPatchRequest.fromJson(value));
    }
    return map;
  }
}

