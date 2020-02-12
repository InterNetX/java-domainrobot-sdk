part of swagger.api;

class BulkDomainCommentRequest {
  /* The objects to process */
  List<Domain> objects = [];
  
/* The template for objects to process */
  Domain template = null;
  
/* The query to fetch the object instead of defined list */
  Query query = null;
  
  BulkDomainCommentRequest();

  @override
  String toString() {
    return 'BulkDomainCommentRequest[objects=$objects, template=$template, query=$query, ]';
  }

  BulkDomainCommentRequest.fromJson(Map<String, dynamic> json) {
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
  }

  Map<String, dynamic> toJson() {
    return {
      'objects': objects,
      'template': template,
      'query': query
     };
  }

  static List<BulkDomainCommentRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkDomainCommentRequest>() : json.map((value) => new BulkDomainCommentRequest.fromJson(value)).toList();
  }

  static Map<String, BulkDomainCommentRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkDomainCommentRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkDomainCommentRequest.fromJson(value));
    }
    return map;
  }
}

