part of swagger.api;

class UserAcl {
  /* The function code to restrict */
  String functionCode = null;
  
/* The none locked children */
  List<BasicUser> children = [];
  
/* The children lock */
  bool childrenLocked = null;
  
/* The user lock */
  bool userLocked = null;
  
/* The current active lock for the user */
  bool effective = null;
  
/* Children to remove from the exception list */
  List<BasicUser> childrenRem = [];
  
/* Children to add to the exception list */
  List<BasicUser> childrenAdd = [];
  
/* The human readable restriction mode */
  ACLRestriction restriction = null;
  
  UserAcl();

  @override
  String toString() {
    return 'UserAcl[functionCode=$functionCode, children=$children, childrenLocked=$childrenLocked, userLocked=$userLocked, effective=$effective, childrenRem=$childrenRem, childrenAdd=$childrenAdd, restriction=$restriction, ]';
  }

  UserAcl.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    functionCode =
        json['functionCode']
    ;
    children =
      BasicUser.listFromJson(json['children'])
;
    childrenLocked =
        json['childrenLocked']
    ;
    userLocked =
        json['userLocked']
    ;
    effective =
        json['effective']
    ;
    childrenRem =
      BasicUser.listFromJson(json['childrenRem'])
;
    childrenAdd =
      BasicUser.listFromJson(json['childrenAdd'])
;
    restriction =
      
      
      new ACLRestriction.fromJson(json['restriction'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'functionCode': functionCode,
      'children': children,
      'childrenLocked': childrenLocked,
      'userLocked': userLocked,
      'effective': effective,
      'childrenRem': childrenRem,
      'childrenAdd': childrenAdd,
      'restriction': restriction
     };
  }

  static List<UserAcl> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserAcl>() : json.map((value) => new UserAcl.fromJson(value)).toList();
  }

  static Map<String, UserAcl> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserAcl>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserAcl.fromJson(value));
    }
    return map;
  }
}

