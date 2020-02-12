part of swagger.api;

class BulkDomainPreregDeleteRequest {
  /* The objects to process */
  List<DomainPrereg> objects = [];
  
/* The query to fetch the object instead of defined list */
  Query query = null;
  
  BulkDomainPreregDeleteRequest();

  @override
  String toString() {
    return 'BulkDomainPreregDeleteRequest[objects=$objects, query=$query, ]';
  }

  BulkDomainPreregDeleteRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      DomainPrereg.listFromJson(json['objects'])
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

  static List<BulkDomainPreregDeleteRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkDomainPreregDeleteRequest>() : json.map((value) => new BulkDomainPreregDeleteRequest.fromJson(value)).toList();
  }

  static Map<String, BulkDomainPreregDeleteRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkDomainPreregDeleteRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkDomainPreregDeleteRequest.fromJson(value));
    }
    return map;
  }
}

