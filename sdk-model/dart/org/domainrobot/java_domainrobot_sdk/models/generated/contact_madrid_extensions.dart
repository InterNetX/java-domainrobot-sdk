part of swagger.api;

class ContactMadridExtensions {
  /* The statement of intended use for the domain name. */
  String intendedUse = null;
  
  ContactMadridExtensions();

  @override
  String toString() {
    return 'ContactMadridExtensions[intendedUse=$intendedUse, ]';
  }

  ContactMadridExtensions.fromJson(Map<String, dynamic> json) {
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

  static List<ContactMadridExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactMadridExtensions>() : json.map((value) => new ContactMadridExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactMadridExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactMadridExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactMadridExtensions.fromJson(value));
    }
    return map;
  }
}

