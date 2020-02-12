part of swagger.api;

class Custom {
  /* Lorem Ipsum */
  String key = null;
  
/* Lorem Ipsum */
  String value = null;
  
  Custom();

  @override
  String toString() {
    return 'Custom[key=$key, value=$value, ]';
  }

  Custom.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    key =
        json['key']
    ;
    value =
        json['value']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'value': value
     };
  }

  static List<Custom> listFromJson(List<dynamic> json) {
    return json == null ? new List<Custom>() : json.map((value) => new Custom.fromJson(value)).toList();
  }

  static Map<String, Custom> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Custom>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Custom.fromJson(value));
    }
    return map;
  }
}

