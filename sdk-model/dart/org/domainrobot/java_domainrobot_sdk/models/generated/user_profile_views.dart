part of swagger.api;

class UserProfileViews {
  
  List<UserProfile> profiles = [];
  
  UserProfileViews();

  @override
  String toString() {
    return 'UserProfileViews[profiles=$profiles, ]';
  }

  UserProfileViews.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    profiles =
      UserProfile.listFromJson(json['profiles'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'profiles': profiles
     };
  }

  static List<UserProfileViews> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserProfileViews>() : json.map((value) => new UserProfileViews.fromJson(value)).toList();
  }

  static Map<String, UserProfileViews> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserProfileViews>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserProfileViews.fromJson(value));
    }
    return map;
  }
}

