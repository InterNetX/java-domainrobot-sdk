part of swagger.api;

class BulkRedirectPatchRequest {
  /* The objects to process */
  List<Redirect> objects = [];
  
/* The template for objects to process */
  Redirect template = null;
  
/* The query to fetch the object instead of defined list */
  Query query = null;
  
  BulkRedirectPatchRequest();

  @override
  String toString() {
    return 'BulkRedirectPatchRequest[objects=$objects, template=$template, query=$query, ]';
  }

  BulkRedirectPatchRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      Redirect.listFromJson(json['objects'])
;
    template =
      
      
      new Redirect.fromJson(json['template'])
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

  static List<BulkRedirectPatchRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkRedirectPatchRequest>() : json.map((value) => new BulkRedirectPatchRequest.fromJson(value)).toList();
  }

  static Map<String, BulkRedirectPatchRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkRedirectPatchRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkRedirectPatchRequest.fromJson(value));
    }
    return map;
  }
}

