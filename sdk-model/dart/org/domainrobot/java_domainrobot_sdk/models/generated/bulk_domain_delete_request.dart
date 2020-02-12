part of swagger.api;

class BulkDomainDeleteRequest {
  /* The objects to process */
  List<Domain> objects = [];
  
/* The query to fetch the object instead of defined list */
  Query query = null;
  
  BulkDomainDeleteRequest();

  @override
  String toString() {
    return 'BulkDomainDeleteRequest[objects=$objects, query=$query, ]';
  }

  BulkDomainDeleteRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      Domain.listFromJson(json['objects'])
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

  static List<BulkDomainDeleteRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkDomainDeleteRequest>() : json.map((value) => new BulkDomainDeleteRequest.fromJson(value)).toList();
  }

  static Map<String, BulkDomainDeleteRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkDomainDeleteRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkDomainDeleteRequest.fromJson(value));
    }
    return map;
  }
}

