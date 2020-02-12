part of swagger.api;

class BulkMailProxyPatchRequest {
  /* The objects to process */
  List<MailProxy> objects = [];
  
/* The template for objects to process */
  MailProxy template = null;
  
/* The query to fetch the object instead of defined list */
  Query query = null;
  
  BulkMailProxyPatchRequest();

  @override
  String toString() {
    return 'BulkMailProxyPatchRequest[objects=$objects, template=$template, query=$query, ]';
  }

  BulkMailProxyPatchRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      MailProxy.listFromJson(json['objects'])
;
    template =
      
      
      new MailProxy.fromJson(json['template'])
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

  static List<BulkMailProxyPatchRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkMailProxyPatchRequest>() : json.map((value) => new BulkMailProxyPatchRequest.fromJson(value)).toList();
  }

  static Map<String, BulkMailProxyPatchRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkMailProxyPatchRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkMailProxyPatchRequest.fromJson(value));
    }
    return map;
  }
}

