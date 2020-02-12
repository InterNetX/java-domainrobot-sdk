part of swagger.api;

class NicMember {
  /* The label */
  String label = null;
  
/* The name */
  String name = null;
  
  NicMember();

  @override
  String toString() {
    return 'NicMember[label=$label, name=$name, ]';
  }

  NicMember.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    label =
        json['label']
    ;
    name =
        json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'name': name
     };
  }

  static List<NicMember> listFromJson(List<dynamic> json) {
    return json == null ? new List<NicMember>() : json.map((value) => new NicMember.fromJson(value)).toList();
  }

  static Map<String, NicMember> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NicMember>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NicMember.fromJson(value));
    }
    return map;
  }
}

