part of swagger.api;

class BulkRedirectDeleteRequest {
  /* The objects to process */
  List<Redirect> objects = [];
  
/* The query to fetch the object instead of defined list */
  Query query = null;
  
  BulkRedirectDeleteRequest();

  @override
  String toString() {
    return 'BulkRedirectDeleteRequest[objects=$objects, query=$query, ]';
  }

  BulkRedirectDeleteRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      Redirect.listFromJson(json['objects'])
;
    query =
      
      
      new Query.fromJson(json['query'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'objects': objects,
      'query': query
     };
  }

  static List<BulkRedirectDeleteRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkRedirectDeleteRequest>() : json.map((value) => new BulkRedirectDeleteRequest.fromJson(value)).toList();
  }

  static Map<String, BulkRedirectDeleteRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkRedirectDeleteRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkRedirectDeleteRequest.fromJson(value));
    }
    return map;
  }
}

