part of swagger.api;

class BasicUser {
  /* The context. */
  int context = null;
  
/* The user name. */
  String user = null;
  
  BasicUser();

  @override
  String toString() {
    return 'BasicUser[context=$context, user=$user, ]';
  }

  BasicUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    context =
        json['context']
    ;
    user =
        json['user']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'context': context,
      'user': user
     };
  }

  static List<BasicUser> listFromJson(List<dynamic> json) {
    return json == null ? new List<BasicUser>() : json.map((value) => new BasicUser.fromJson(value)).toList();
  }

  static Map<String, BasicUser> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BasicUser>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BasicUser.fromJson(value));
    }
    return map;
  }
}

