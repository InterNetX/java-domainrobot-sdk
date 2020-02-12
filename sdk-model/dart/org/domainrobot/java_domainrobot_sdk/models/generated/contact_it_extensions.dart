part of swagger.api;

class ContactItExtensions {
  /* The number of the matching entity. */
  ItEntityTypeConstants entityType = null;
  
  ContactItExtensions();

  @override
  String toString() {
    return 'ContactItExtensions[entityType=$entityType, ]';
  }

  ContactItExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    entityType =
      
      
      new ItEntityTypeConstants.fromJson(json['entityType'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'entityType': entityType
     };
  }

  static List<ContactItExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactItExtensions>() : json.map((value) => new ContactItExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactItExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactItExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactItExtensions.fromJson(value));
    }
    return map;
  }
}

