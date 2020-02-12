part of swagger.api;

class GenericObject {
  /* The type of the object. */
  String type = null;
  
/* The value of the object. */
  String value = null;
  
  GenericObject();

  @override
  String toString() {
    return 'GenericObject[type=$type, value=$value, ]';
  }

  GenericObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        json['type']
    ;
    value =
        json['value']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'value': value
     };
  }

  static List<GenericObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<GenericObject>() : json.map((value) => new GenericObject.fromJson(value)).toList();
  }

  static Map<String, GenericObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GenericObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GenericObject.fromJson(value));
    }
    return map;
  }
}

