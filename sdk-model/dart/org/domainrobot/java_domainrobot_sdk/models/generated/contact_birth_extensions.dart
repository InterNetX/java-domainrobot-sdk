part of swagger.api;

class ContactBirthExtensions {
  /* The country. */
  String country = null;
  
/* The day. */
  DateTime day = null;
  
/* The postalCode. */
  String postalCode = null;
  
/* The place. */
  String place = null;
  
  ContactBirthExtensions();

  @override
  String toString() {
    return 'ContactBirthExtensions[country=$country, day=$day, postalCode=$postalCode, place=$place, ]';
  }

  ContactBirthExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    country =
        json['country']
    ;
    day = json['day'] == null ? null : DateTime.parse(json['day']);
    postalCode =
        json['postalCode']
    ;
    place =
        json['place']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'country': country,
      'day': day == null ? '' : day.toUtc().toIso8601String(),
      'postalCode': postalCode,
      'place': place
     };
  }

  static List<ContactBirthExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactBirthExtensions>() : json.map((value) => new ContactBirthExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactBirthExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactBirthExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactBirthExtensions.fromJson(value));
    }
    return map;
  }
}

