part of swagger.api;

class BulkObjectUserAssignmentPatchRequest {
  /* The objects to process */
  List<ObjectUserAssignment> objects = [];
  
/* The template for objects to process */
  ObjectUserAssignment template = null;
  
  BulkObjectUserAssignmentPatchRequest();

  @override
  String toString() {
    return 'BulkObjectUserAssignmentPatchRequest[objects=$objects, template=$template, ]';
  }

  BulkObjectUserAssignmentPatchRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      ObjectUserAssignment.listFromJson(json['objects'])
;
    template =
      
      
      new ObjectUserAssignment.fromJson(json['template'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'objects': objects,
      'template': template
     };
  }

  static List<BulkObjectUserAssignmentPatchRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkObjectUserAssignmentPatchRequest>() : json.map((value) => new BulkObjectUserAssignmentPatchRequest.fromJson(value)).toList();
  }

  static Map<String, BulkObjectUserAssignmentPatchRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkObjectUserAssignmentPatchRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkObjectUserAssignmentPatchRequest.fromJson(value));
    }
    return map;
  }
}

