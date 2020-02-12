part of swagger.api;

class UserDetails {
  /* The organization. */
  String organization = null;
  
/* The mobile phone number. */
  String passwordResetMobile = null;
  
/* The email address for the verification of the password reset process. */
  String passwordResetVerifyEmail = null;
  
/* The email address for the password reset tan. */
  String passwordResetEmail = null;
  
/* The first name. */
  String fname = null;
  
/* The last name. */
  String lname = null;
  
  UserDetails();

  @override
  String toString() {
    return 'UserDetails[organization=$organization, passwordResetMobile=$passwordResetMobile, passwordResetVerifyEmail=$passwordResetVerifyEmail, passwordResetEmail=$passwordResetEmail, fname=$fname, lname=$lname, ]';
  }

  UserDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    organization =
        json['organization']
    ;
    passwordResetMobile =
        json['passwordResetMobile']
    ;
    passwordResetVerifyEmail =
        json['passwordResetVerifyEmail']
    ;
    passwordResetEmail =
        json['passwordResetEmail']
    ;
    fname =
        json['fname']
    ;
    lname =
        json['lname']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'organization': organization,
      'passwordResetMobile': passwordResetMobile,
      'passwordResetVerifyEmail': passwordResetVerifyEmail,
      'passwordResetEmail': passwordResetEmail,
      'fname': fname,
      'lname': lname
     };
  }

  static List<UserDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserDetails>() : json.map((value) => new UserDetails.fromJson(value)).toList();
  }

  static Map<String, UserDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserDetails.fromJson(value));
    }
    return map;
  }
}

