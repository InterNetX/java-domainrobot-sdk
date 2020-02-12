part of swagger.api;

class UserAcls {
  /* The user which has been effected */
  BasicUser user = null;
  
/* The acls of the user. */
  List<UserAcl> acls = [];
  
  UserAcls();

  @override
  String toString() {
    return 'UserAcls[user=$user, acls=$acls, ]';
  }

  UserAcls.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    user =
      
      
      new BasicUser.fromJson(json['user'])
;
    acls =
      UserAcl.listFromJson(json['acls'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user,
      'acls': acls
     };
  }

  static List<UserAcls> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserAcls>() : json.map((value) => new UserAcls.fromJson(value)).toList();
  }

  static Map<String, UserAcls> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserAcls>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserAcls.fromJson(value));
    }
    return map;
  }
}

