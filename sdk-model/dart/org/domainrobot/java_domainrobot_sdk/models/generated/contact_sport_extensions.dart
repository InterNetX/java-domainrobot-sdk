part of swagger.api;

class ContactSportExtensions {
  /* The intended use. */
  String intendedUse = null;
  
  ContactSportExtensions();

  @override
  String toString() {
    return 'ContactSportExtensions[intendedUse=$intendedUse, ]';
  }

  ContactSportExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    intendedUse =
        json['intendedUse']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'intendedUse': intendedUse
     };
  }

  static List<ContactSportExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactSportExtensions>() : json.map((value) => new ContactSportExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactSportExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactSportExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactSportExtensions.fromJson(value));
    }
    return map;
  }
}

