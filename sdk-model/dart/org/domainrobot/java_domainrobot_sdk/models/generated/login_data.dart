part of swagger.api;

class LoginData {
  /* The context. */
  int context = null;
  
/* The password. */
  String password = null;
  
/* The one time password in case of 2fa authentication. */
  String token = null;
  
/* The user name. */
  String user = null;
  
  LoginData();

  @override
  String toString() {
    return 'LoginData[context=$context, password=$password, token=$token, user=$user, ]';
  }

  LoginData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    context =
        json['context']
    ;
    password =
        json['password']
    ;
    token =
        json['token']
    ;
    user =
        json['user']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'context': context,
      'password': password,
      'token': token,
      'user': user
     };
  }

  static List<LoginData> listFromJson(List<dynamic> json) {
    return json == null ? new List<LoginData>() : json.map((value) => new LoginData.fromJson(value)).toList();
  }

  static Map<String, LoginData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LoginData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LoginData.fromJson(value));
    }
    return map;
  }
}

