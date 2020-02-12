part of swagger.api;

class BulkDomainSafeDomainRequest {
  /* The objects to process */
  List<Domain> objects = [];
  
/* The query to fetch the object instead of defined list */
  Query query = null;
  
  BulkDomainSafeDomainRequest();

  @override
  String toString() {
    return 'BulkDomainSafeDomainRequest[objects=$objects, query=$query, ]';
  }

  BulkDomainSafeDomainRequest.fromJson(Map<String, dynamic> json) {
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

  static List<BulkDomainSafeDomainRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkDomainSafeDomainRequest>() : json.map((value) => new BulkDomainSafeDomainRequest.fromJson(value)).toList();
  }

  static Map<String, BulkDomainSafeDomainRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkDomainSafeDomainRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkDomainSafeDomainRequest.fromJson(value));
    }
    return map;
  }
}

