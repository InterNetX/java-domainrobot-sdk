part of swagger.api;

class BulkZonePatchRequest {
  /* The objects to process */
  List<ZoneBasePatchRequest> objects = [];
  
/* The template for objects to process */
  ZoneBasePatchRequest template = null;
  
/* The query to fetch the object instead of defined list */
  Query query = null;
  
/* The modifer to apply on the objects */
  List<Modifier> modifiers = [];
  
  BulkZonePatchRequest();

  @override
  String toString() {
    return 'BulkZonePatchRequest[objects=$objects, template=$template, query=$query, modifiers=$modifiers, ]';
  }

  BulkZonePatchRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      ZoneBasePatchRequest.listFromJson(json['objects'])
;
    template =
      
      
      new ZoneBasePatchRequest.fromJson(json['template'])
;
    query =
      
      
      new Query.fromJson(json['query'])
;
    modifiers =
      Modifier.listFromJson(json['modifiers'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'objects': objects,
      'template': template,
      'query': query,
      'modifiers': modifiers
     };
  }

  static List<BulkZonePatchRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkZonePatchRequest>() : json.map((value) => new BulkZonePatchRequest.fromJson(value)).toList();
  }

  static Map<String, BulkZonePatchRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkZonePatchRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkZonePatchRequest.fromJson(value));
    }
    return map;
  }
}

