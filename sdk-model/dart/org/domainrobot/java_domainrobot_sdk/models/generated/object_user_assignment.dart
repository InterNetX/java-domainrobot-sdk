part of swagger.api;

class ObjectUserAssignment {
  /* The type of the object. */
  String type = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The object name. */
  String name = null;
  
/* The cancelation mode. */
  ObjectAssignmentMode cancelation = null;
  
/* The source owner. */
  BasicUser source = null;
  
/* The target owner. */
  BasicUser target = null;
  
  ObjectUserAssignment();

  @override
  String toString() {
    return 'ObjectUserAssignment[type=$type, owner=$owner, name=$name, cancelation=$cancelation, source=$source, target=$target, ]';
  }

  ObjectUserAssignment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        json['type']
    ;
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    name =
        json['name']
    ;
    cancelation =
      
      
      new ObjectAssignmentMode.fromJson(json['cancelation'])
;
    source =
      
      
      new BasicUser.fromJson(json['source'])
;
    target =
      
      
      new BasicUser.fromJson(json['target'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'owner': owner,
      'name': name,
      'cancelation': cancelation,
      'source': source,
      'target': target
     };
  }

  static List<ObjectUserAssignment> listFromJson(List<dynamic> json) {
    return json == null ? new List<ObjectUserAssignment>() : json.map((value) => new ObjectUserAssignment.fromJson(value)).toList();
  }

  static Map<String, ObjectUserAssignment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ObjectUserAssignment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ObjectUserAssignment.fromJson(value));
    }
    return map;
  }
}

