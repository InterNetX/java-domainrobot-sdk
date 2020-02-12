part of swagger.api;

class ContactUkExtensions {
  /* The entity type. */
  UkTypeConstants entityType = null;
  
  ContactUkExtensions();

  @override
  String toString() {
    return 'ContactUkExtensions[entityType=$entityType, ]';
  }

  ContactUkExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    entityType =
      
      
      new UkTypeConstants.fromJson(json['entityType'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'entityType': entityType
     };
  }

  static List<ContactUkExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactUkExtensions>() : json.map((value) => new ContactUkExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactUkExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactUkExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactUkExtensions.fromJson(value));
    }
    return map;
  }
}

