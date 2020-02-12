part of swagger.api;

class Name {
    Name();

  @override
  String toString() {
    return 'Name[]';
  }

  Name.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Name> listFromJson(List<dynamic> json) {
    return json == null ? new List<Name>() : json.map((value) => new Name.fromJson(value)).toList();
  }

  static Map<String, Name> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Name>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Name.fromJson(value));
    }
    return map;
  }
}

