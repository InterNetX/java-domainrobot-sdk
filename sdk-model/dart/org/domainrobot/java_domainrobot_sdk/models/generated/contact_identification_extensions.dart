part of swagger.api;

class ContactIdentificationExtensions {
  /* The number. */
  String number = null;
  
/* The authority. */
  String authority = null;
  
/* The date of issue. */
  DateTime dateOfIssue = null;
  
/* The valid till date. */
  DateTime validTill = null;
  
  ContactIdentificationExtensions();

  @override
  String toString() {
    return 'ContactIdentificationExtensions[number=$number, authority=$authority, dateOfIssue=$dateOfIssue, validTill=$validTill, ]';
  }

  ContactIdentificationExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    number =
        json['number']
    ;
    authority =
        json['authority']
    ;
    dateOfIssue = json['dateOfIssue'] == null ? null : DateTime.parse(json['dateOfIssue']);
    validTill = json['validTill'] == null ? null : DateTime.parse(json['validTill']);
  }

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'authority': authority,
      'dateOfIssue': dateOfIssue == null ? '' : dateOfIssue.toUtc().toIso8601String(),
      'validTill': validTill == null ? '' : validTill.toUtc().toIso8601String()
     };
  }

  static List<ContactIdentificationExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactIdentificationExtensions>() : json.map((value) => new ContactIdentificationExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactIdentificationExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactIdentificationExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactIdentificationExtensions.fromJson(value));
    }
    return map;
  }
}

