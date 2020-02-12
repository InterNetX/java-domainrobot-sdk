part of swagger.api;

class BulkZonePostRequest {
  /* The objects to process */
  List<Zone> objects = [];
  
/* The template for objects to process */
  Zone template = null;
  
  BulkZonePostRequest();

  @override
  String toString() {
    return 'BulkZonePostRequest[objects=$objects, template=$template, ]';
  }

  BulkZonePostRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      Zone.listFromJson(json['objects'])
;
    template =
      
      
      new Zone.fromJson(json['template'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'objects': objects,
      'template': template
     };
  }

  static List<BulkZonePostRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkZonePostRequest>() : json.map((value) => new BulkZonePostRequest.fromJson(value)).toList();
  }

  static Map<String, BulkZonePostRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkZonePostRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkZonePostRequest.fromJson(value));
    }
    return map;
  }
}

