part of swagger.api;

class BulkZoneDeleteRequest {
  /* The objects to process */
  List<Zone> objects = [];
  
/* The query to fetch the object instead of defined list */
  Query query = null;
  
  BulkZoneDeleteRequest();

  @override
  String toString() {
    return 'BulkZoneDeleteRequest[objects=$objects, query=$query, ]';
  }

  BulkZoneDeleteRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      Zone.listFromJson(json['objects'])
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

  static List<BulkZoneDeleteRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkZoneDeleteRequest>() : json.map((value) => new BulkZoneDeleteRequest.fromJson(value)).toList();
  }

  static Map<String, BulkZoneDeleteRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkZoneDeleteRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkZoneDeleteRequest.fromJson(value));
    }
    return map;
  }
}

