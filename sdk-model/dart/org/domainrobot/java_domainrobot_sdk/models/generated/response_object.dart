part of swagger.api;

class ResponseObject {
  /* The type of the object. */
  String type = null;
  
/* The primary key of the object. */
  String value = null;
  
/* The amound of objects found in list tasks. */
  int summary = null;
  
/* The value of the object. */
  Object data = null;
  
  ResponseObject();

  @override
  String toString() {
    return 'ResponseObject[type=$type, value=$value, summary=$summary, data=$data, ]';
  }

  ResponseObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        json['type']
    ;
    value =
        json['value']
    ;
    summary =
        json['summary']
    ;
    data =
      
      
      new Object.fromJson(json['data'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'value': value,
      'summary': summary,
      'data': data
     };
  }

  static List<ResponseObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseObject>() : json.map((value) => new ResponseObject.fromJson(value)).toList();
  }

  static Map<String, ResponseObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ResponseObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ResponseObject.fromJson(value));
    }
    return map;
  }
}

