part of swagger.api;

class Phone {
    Phone();

  @override
  String toString() {
    return 'Phone[]';
  }

  Phone.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Phone> listFromJson(List<dynamic> json) {
    return json == null ? new List<Phone>() : json.map((value) => new Phone.fromJson(value)).toList();
  }

  static Map<String, Phone> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Phone>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Phone.fromJson(value));
    }
    return map;
  }
}

