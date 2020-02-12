part of swagger.api;

class ContactTrademarkExtensions {
  /* The name. */
  String name = null;
  
/* The number. */
  String number = null;
  
/* The country. */
  String country = null;
  
/* The registration date. */
  DateTime regdate = null;
  
/* The application date. */
  DateTime appdate = null;
  
/* The office. */
  String office = null;
  
  ContactTrademarkExtensions();

  @override
  String toString() {
    return 'ContactTrademarkExtensions[name=$name, number=$number, country=$country, regdate=$regdate, appdate=$appdate, office=$office, ]';
  }

  ContactTrademarkExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    number =
        json['number']
    ;
    country =
        json['country']
    ;
    regdate = json['regdate'] == null ? null : DateTime.parse(json['regdate']);
    appdate = json['appdate'] == null ? null : DateTime.parse(json['appdate']);
    office =
        json['office']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'number': number,
      'country': country,
      'regdate': regdate == null ? '' : regdate.toUtc().toIso8601String(),
      'appdate': appdate == null ? '' : appdate.toUtc().toIso8601String(),
      'office': office
     };
  }

  static List<ContactTrademarkExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactTrademarkExtensions>() : json.map((value) => new ContactTrademarkExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactTrademarkExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactTrademarkExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactTrademarkExtensions.fromJson(value));
    }
    return map;
  }
}

