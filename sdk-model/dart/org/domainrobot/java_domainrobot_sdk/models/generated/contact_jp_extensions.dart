part of swagger.api;

class ContactJpExtensions {
  /* The first name. */
  String first = null;
  
/* The last name. */
  String last = null;
  
/* The organization. */
  String organization = null;
  
/* The first line of the address. */
  String adressLine1 = null;
  
/* The second line of the address. */
  String adressLine2 = null;
  
/* The third line of the address. */
  String adressLine3 = null;
  
  ContactJpExtensions();

  @override
  String toString() {
    return 'ContactJpExtensions[first=$first, last=$last, organization=$organization, adressLine1=$adressLine1, adressLine2=$adressLine2, adressLine3=$adressLine3, ]';
  }

  ContactJpExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    first =
        json['first']
    ;
    last =
        json['last']
    ;
    organization =
        json['organization']
    ;
    adressLine1 =
        json['adressLine1']
    ;
    adressLine2 =
        json['adressLine2']
    ;
    adressLine3 =
        json['adressLine3']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'first': first,
      'last': last,
      'organization': organization,
      'adressLine1': adressLine1,
      'adressLine2': adressLine2,
      'adressLine3': adressLine3
     };
  }

  static List<ContactJpExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactJpExtensions>() : json.map((value) => new ContactJpExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactJpExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactJpExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactJpExtensions.fromJson(value));
    }
    return map;
  }
}

