part of swagger.api;

class ContactNzExtensions {
  /* The irpo. */
  bool irpo = null;
  
  ContactNzExtensions();

  @override
  String toString() {
    return 'ContactNzExtensions[irpo=$irpo, ]';
  }

  ContactNzExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    irpo =
        json['irpo']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'irpo': irpo
     };
  }

  static List<ContactNzExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactNzExtensions>() : json.map((value) => new ContactNzExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactNzExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactNzExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactNzExtensions.fromJson(value));
    }
    return map;
  }
}

