part of swagger.api;

class ContactSwissExtensions {
  /* The enterprise ID, in the specific context of .swiss based on current rules, is the Swiss UID/IDE/IDI. */
  String enterpriseId = null;
  
/* The statement of intended use for the domain name. */
  String intededUse = null;
  
  ContactSwissExtensions();

  @override
  String toString() {
    return 'ContactSwissExtensions[enterpriseId=$enterpriseId, intededUse=$intededUse, ]';
  }

  ContactSwissExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    enterpriseId =
        json['enterpriseId']
    ;
    intededUse =
        json['intededUse']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'enterpriseId': enterpriseId,
      'intededUse': intededUse
     };
  }

  static List<ContactSwissExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactSwissExtensions>() : json.map((value) => new ContactSwissExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactSwissExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactSwissExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactSwissExtensions.fromJson(value));
    }
    return map;
  }
}

