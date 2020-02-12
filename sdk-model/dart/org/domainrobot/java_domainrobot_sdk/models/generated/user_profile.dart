part of swagger.api;

class UserProfile {
  /* The mode of the entry */
  UserProfileFlag flag = null;
  
/* The  user profile key */
  String key = null;
  
/* The value of the key */
  String value = null;
  
/* The read only entry */
  bool readonly = null;
  
  UserProfile();

  @override
  String toString() {
    return 'UserProfile[flag=$flag, key=$key, value=$value, readonly=$readonly, ]';
  }

  UserProfile.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    flag =
      
      
      new UserProfileFlag.fromJson(json['flag'])
;
    key =
        json['key']
    ;
    value =
        json['value']
    ;
    readonly =
        json['readonly']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'flag': flag,
      'key': key,
      'value': value,
      'readonly': readonly
     };
  }

  static List<UserProfile> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserProfile>() : json.map((value) => new UserProfile.fromJson(value)).toList();
  }

  static Map<String, UserProfile> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserProfile>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserProfile.fromJson(value));
    }
    return map;
  }
}

