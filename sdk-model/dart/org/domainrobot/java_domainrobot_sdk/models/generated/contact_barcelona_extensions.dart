part of swagger.api;

class ContactBarcelonaExtensions {
  /* The statement of intended use for the domain name. */
  String intededUse = null;
  
  ContactBarcelonaExtensions();

  @override
  String toString() {
    return 'ContactBarcelonaExtensions[intededUse=$intededUse, ]';
  }

  ContactBarcelonaExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    intededUse =
        json['intededUse']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'intededUse': intededUse
     };
  }

  static List<ContactBarcelonaExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactBarcelonaExtensions>() : json.map((value) => new ContactBarcelonaExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactBarcelonaExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactBarcelonaExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactBarcelonaExtensions.fromJson(value));
    }
    return map;
  }
}

