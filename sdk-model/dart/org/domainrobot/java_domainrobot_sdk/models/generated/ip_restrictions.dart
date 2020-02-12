part of swagger.api;

class IpRestrictions {
  /* A list of ip restrictions */
  List<IpRestriction> acls = [];
  
  IpRestrictions();

  @override
  String toString() {
    return 'IpRestrictions[acls=$acls, ]';
  }

  IpRestrictions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    acls =
      IpRestriction.listFromJson(json['acls'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'acls': acls
     };
  }

  static List<IpRestrictions> listFromJson(List<dynamic> json) {
    return json == null ? new List<IpRestrictions>() : json.map((value) => new IpRestrictions.fromJson(value)).toList();
  }

  static Map<String, IpRestrictions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IpRestrictions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IpRestrictions.fromJson(value));
    }
    return map;
  }
}

