part of swagger.api;

class ContactRoExtensions {
  /* The entity person type. */
  RoPersonTypeConstants personType = null;
  
  ContactRoExtensions();

  @override
  String toString() {
    return 'ContactRoExtensions[personType=$personType, ]';
  }

  ContactRoExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    personType =
      
      
      new RoPersonTypeConstants.fromJson(json['personType'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'personType': personType
     };
  }

  static List<ContactRoExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactRoExtensions>() : json.map((value) => new ContactRoExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactRoExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactRoExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactRoExtensions.fromJson(value));
    }
    return map;
  }
}

