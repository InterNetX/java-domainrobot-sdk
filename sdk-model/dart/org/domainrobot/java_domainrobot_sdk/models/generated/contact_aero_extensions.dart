part of swagger.api;

class ContactAeroExtensions {
  /* Aero Authentication ID. */
  String ensAuthId = null;
  
/* Aero ENS key. */
  String ensKey = null;
  
  ContactAeroExtensions();

  @override
  String toString() {
    return 'ContactAeroExtensions[ensAuthId=$ensAuthId, ensKey=$ensKey, ]';
  }

  ContactAeroExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ensAuthId =
        json['ensAuthId']
    ;
    ensKey =
        json['ensKey']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'ensAuthId': ensAuthId,
      'ensKey': ensKey
     };
  }

  static List<ContactAeroExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactAeroExtensions>() : json.map((value) => new ContactAeroExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactAeroExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactAeroExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactAeroExtensions.fromJson(value));
    }
    return map;
  }
}

