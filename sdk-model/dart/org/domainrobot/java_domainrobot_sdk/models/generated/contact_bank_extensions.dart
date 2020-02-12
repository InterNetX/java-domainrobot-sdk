part of swagger.api;

class ContactBankExtensions {
  /* The FTLD token. */
  String ftldToken = null;
  
  ContactBankExtensions();

  @override
  String toString() {
    return 'ContactBankExtensions[ftldToken=$ftldToken, ]';
  }

  ContactBankExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ftldToken =
        json['ftldToken']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'ftldToken': ftldToken
     };
  }

  static List<ContactBankExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactBankExtensions>() : json.map((value) => new ContactBankExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactBankExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactBankExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactBankExtensions.fromJson(value));
    }
    return map;
  }
}

