part of swagger.api;

class BulkRedirectPostRequest {
  /* The objects to process */
  List<Redirect> objects = [];
  
/* The template for objects to process */
  Redirect template = null;
  
  BulkRedirectPostRequest();

  @override
  String toString() {
    return 'BulkRedirectPostRequest[objects=$objects, template=$template, ]';
  }

  BulkRedirectPostRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      Redirect.listFromJson(json['objects'])
;
    template =
      
      
      new Redirect.fromJson(json['template'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'objects': objects,
      'template': template
     };
  }

  static List<BulkRedirectPostRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkRedirectPostRequest>() : json.map((value) => new BulkRedirectPostRequest.fromJson(value)).toList();
  }

  static Map<String, BulkRedirectPostRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkRedirectPostRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkRedirectPostRequest.fromJson(value));
    }
    return map;
  }
}

