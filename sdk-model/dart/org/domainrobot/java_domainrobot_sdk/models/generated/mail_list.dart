part of swagger.api;

class MailList {
  /* A list of email addresses */
  List<String> emails = [];
  
  MailList();

  @override
  String toString() {
    return 'MailList[emails=$emails, ]';
  }

  MailList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    emails =
        (json['emails'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'emails': emails
     };
  }

  static List<MailList> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailList>() : json.map((value) => new MailList.fromJson(value)).toList();
  }

  static Map<String, MailList> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailList>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailList.fromJson(value));
    }
    return map;
  }
}

