part of swagger.api;

class BulkMailProxyDeleteRequest {
  /* The objects to process */
  List<MailProxy> objects = [];
  
/* The query to fetch the object instead of defined list */
  Query query = null;
  
  BulkMailProxyDeleteRequest();

  @override
  String toString() {
    return 'BulkMailProxyDeleteRequest[objects=$objects, query=$query, ]';
  }

  BulkMailProxyDeleteRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      MailProxy.listFromJson(json['objects'])
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

  static List<BulkMailProxyDeleteRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkMailProxyDeleteRequest>() : json.map((value) => new BulkMailProxyDeleteRequest.fromJson(value)).toList();
  }

  static Map<String, BulkMailProxyDeleteRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkMailProxyDeleteRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkMailProxyDeleteRequest.fromJson(value));
    }
    return map;
  }
}

