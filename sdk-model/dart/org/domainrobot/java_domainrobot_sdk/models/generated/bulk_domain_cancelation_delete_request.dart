part of swagger.api;

class BulkDomainCancelationDeleteRequest {
  /* The objects to process */
  List<DomainCancelation> objects = [];
  
/* The query to fetch the object instead of defined list */
  Query query = null;
  
  BulkDomainCancelationDeleteRequest();

  @override
  String toString() {
    return 'BulkDomainCancelationDeleteRequest[objects=$objects, query=$query, ]';
  }

  BulkDomainCancelationDeleteRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      DomainCancelation.listFromJson(json['objects'])
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

  static List<BulkDomainCancelationDeleteRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkDomainCancelationDeleteRequest>() : json.map((value) => new BulkDomainCancelationDeleteRequest.fromJson(value)).toList();
  }

  static Map<String, BulkDomainCancelationDeleteRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkDomainCancelationDeleteRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkDomainCancelationDeleteRequest.fromJson(value));
    }
    return map;
  }
}

