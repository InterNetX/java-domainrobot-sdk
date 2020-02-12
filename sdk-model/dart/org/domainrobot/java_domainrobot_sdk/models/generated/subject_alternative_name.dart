part of swagger.api;

class SubjectAlternativeName {
  /* The name of the san. */
  String name = null;
  
/* The approver email of the san. */
  String approverEmail = null;
  
/* The order id of the san. */
  String orderId = null;
  
  SubjectAlternativeName();

  @override
  String toString() {
    return 'SubjectAlternativeName[name=$name, approverEmail=$approverEmail, orderId=$orderId, ]';
  }

  SubjectAlternativeName.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    approverEmail =
        json['approverEmail']
    ;
    orderId =
        json['orderId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'approverEmail': approverEmail,
      'orderId': orderId
     };
  }

  static List<SubjectAlternativeName> listFromJson(List<dynamic> json) {
    return json == null ? new List<SubjectAlternativeName>() : json.map((value) => new SubjectAlternativeName.fromJson(value)).toList();
  }

  static Map<String, SubjectAlternativeName> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SubjectAlternativeName>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SubjectAlternativeName.fromJson(value));
    }
    return map;
  }
}

