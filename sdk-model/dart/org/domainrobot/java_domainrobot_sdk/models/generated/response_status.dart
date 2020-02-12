part of swagger.api;

class ResponseStatus {
  /* The result code of the response */
  String code = null;
  
/* The text representation of the result code. */
  String text = null;
  
/* The status of the response. */
  StatusType type = null;
  
  ResponseStatus();

  @override
  String toString() {
    return 'ResponseStatus[code=$code, text=$text, type=$type, ]';
  }

  ResponseStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code =
        json['code']
    ;
    text =
        json['text']
    ;
    type =
      
      
      new StatusType.fromJson(json['type'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'text': text,
      'type': type
     };
  }

  static List<ResponseStatus> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseStatus>() : json.map((value) => new ResponseStatus.fromJson(value)).toList();
  }

  static Map<String, ResponseStatus> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ResponseStatus>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ResponseStatus.fromJson(value));
    }
    return map;
  }
}

