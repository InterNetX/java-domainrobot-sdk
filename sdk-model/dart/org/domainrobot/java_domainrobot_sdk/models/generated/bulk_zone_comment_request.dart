part of swagger.api;

class BulkZoneCommentRequest {
  /* The objects to process */
  List<Zone> objects = [];
  
/* The template for objects to process */
  Zone template = null;
  
/* The query to fetch the object instead of defined list */
  Query query = null;
  
  BulkZoneCommentRequest();

  @override
  String toString() {
    return 'BulkZoneCommentRequest[objects=$objects, template=$template, query=$query, ]';
  }

  BulkZoneCommentRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      Zone.listFromJson(json['objects'])
;
    template =
      
      
      new Zone.fromJson(json['template'])
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

  static List<BulkZoneCommentRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkZoneCommentRequest>() : json.map((value) => new BulkZoneCommentRequest.fromJson(value)).toList();
  }

  static Map<String, BulkZoneCommentRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkZoneCommentRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkZoneCommentRequest.fromJson(value));
    }
    return map;
  }
}

