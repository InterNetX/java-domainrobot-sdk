part of swagger.api;

class ContactCatExtensions {
  /* The statement of intended use for the domain name. */
  String intendedUse = null;
  
  ContactCatExtensions();

  @override
  String toString() {
    return 'ContactCatExtensions[intendedUse=$intendedUse, ]';
  }

  ContactCatExtensions.fromJson(Map<String, dynamic> json) {
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

  static List<ContactCatExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactCatExtensions>() : json.map((value) => new ContactCatExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactCatExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactCatExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactCatExtensions.fromJson(value));
    }
    return map;
  }
}

