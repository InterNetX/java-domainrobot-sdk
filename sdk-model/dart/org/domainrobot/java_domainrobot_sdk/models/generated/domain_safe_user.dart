part of swagger.api;

class DomainSafeUser {
  /* The context. */
  int context = null;
  
/* The user name. */
  String user = null;
  
/* The pin. */
  String pin = null;
  
  DomainSafeUser();

  @override
  String toString() {
    return 'DomainSafeUser[context=$context, user=$user, pin=$pin, ]';
  }

  DomainSafeUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    context =
        json['context']
    ;
    user =
        json['user']
    ;
    pin =
        json['pin']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'context': context,
      'user': user,
      'pin': pin
     };
  }

  static List<DomainSafeUser> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainSafeUser>() : json.map((value) => new DomainSafeUser.fromJson(value)).toList();
  }

  static Map<String, DomainSafeUser> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainSafeUser>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainSafeUser.fromJson(value));
    }
    return map;
  }
}

