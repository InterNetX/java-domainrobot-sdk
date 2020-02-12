part of swagger.api;

class BulkMailProxyPostRequest {
  /* The objects to process */
  List<MailProxy> objects = [];
  
/* The template for objects to process */
  MailProxy template = null;
  
  BulkMailProxyPostRequest();

  @override
  String toString() {
    return 'BulkMailProxyPostRequest[objects=$objects, template=$template, ]';
  }

  BulkMailProxyPostRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      MailProxy.listFromJson(json['objects'])
;
    template =
      
      
      new MailProxy.fromJson(json['template'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'objects': objects,
      'template': template
     };
  }

  static List<BulkMailProxyPostRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkMailProxyPostRequest>() : json.map((value) => new BulkMailProxyPostRequest.fromJson(value)).toList();
  }

  static Map<String, BulkMailProxyPostRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkMailProxyPostRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkMailProxyPostRequest.fromJson(value));
    }
    return map;
  }
}

