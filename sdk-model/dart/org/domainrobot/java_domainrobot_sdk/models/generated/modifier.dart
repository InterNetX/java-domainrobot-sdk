part of swagger.api;

class Modifier {
  /* The search pattern */
  String search = null;
  
/* The replacement value */
  String replace = null;
  
/* The modifiers type, e.g. NAME_SERVER */
  ModifierConstants type = null;
  
  Modifier();

  @override
  String toString() {
    return 'Modifier[search=$search, replace=$replace, type=$type, ]';
  }

  Modifier.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    search =
        json['search']
    ;
    replace =
        json['replace']
    ;
    type =
      
      
      new ModifierConstants.fromJson(json['type'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'search': search,
      'replace': replace,
      'type': type
     };
  }

  static List<Modifier> listFromJson(List<dynamic> json) {
    return json == null ? new List<Modifier>() : json.map((value) => new Modifier.fromJson(value)).toList();
  }

  static Map<String, Modifier> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Modifier>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Modifier.fromJson(value));
    }
    return map;
  }
}

