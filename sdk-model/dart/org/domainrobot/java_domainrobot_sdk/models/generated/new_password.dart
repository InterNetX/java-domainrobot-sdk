part of swagger.api;

class NewPassword {
  /* The user */
  String user = null;
  
/* The context of the user */
  int context = null;
  
/* The tan */
  String tan = null;
  
/* The password */
  String password = null;
  
/* The disguised email to which the TAN is to be sent. */
  String email = null;
  
/* The disguised mobilephone number to which the TAN is to be sent. */
  String mobile = null;
  
/* The tan methods available for the user */
  List<String> tanMethods = [];
  
/* The token */
  String token = null;
  
/* The selected method */
  String method = null;
  
  NewPassword();

  @override
  String toString() {
    return 'NewPassword[user=$user, context=$context, tan=$tan, password=$password, email=$email, mobile=$mobile, tanMethods=$tanMethods, token=$token, method=$method, ]';
  }

  NewPassword.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    user =
        json['user']
    ;
    context =
        json['context']
    ;
    tan =
        json['tan']
    ;
    password =
        json['password']
    ;
    email =
        json['email']
    ;
    mobile =
        json['mobile']
    ;
    tanMethods =
        (json['tanMethods'] as List).map((item) => item as String).toList()
    ;
    token =
        json['token']
    ;
    method =
        json['method']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user,
      'context': context,
      'tan': tan,
      'password': password,
      'email': email,
      'mobile': mobile,
      'tanMethods': tanMethods,
      'token': token,
      'method': method
     };
  }

  static List<NewPassword> listFromJson(List<dynamic> json) {
    return json == null ? new List<NewPassword>() : json.map((value) => new NewPassword.fromJson(value)).toList();
  }

  static Map<String, NewPassword> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NewPassword>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NewPassword.fromJson(value));
    }
    return map;
  }
}

