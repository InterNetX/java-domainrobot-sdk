part of swagger.api;

class User {
  /* The user created date. */
  DateTime created = null;
  
/* The user updated date. */
  DateTime updated = null;
  
/* The context. */
  int context = null;
  
/* The password. */
  String password = null;
  
/* The default email. */
  String defaultEmail = null;
  
/* The status. */
  int status = null;
  
/* The substatus. */
  int substatus = null;
  
/* The users authorization method. */
  AuthType authType = null;
  
/* The user details. */
  UserDetails details = null;
  
/* The lock status of the user. */
  UserLock lock = null;
  
/* Wrapper for the user acls. */
  UserAcls acls = null;
  
/* Wrapper for the user profiles. */
  UserProfileViews profiles = null;
  
/* The ancestors of the user. */
  List<BasicUser> ancestors = [];
  
/* The customer belonging to the user. */
  BasicCustomer customer = null;
  
/* The available name server groups */
  List<VirtualNameServerGroup> nameServerGroups = [];
  
/* Wrapper for the subscriptions. */
  List<Subscription> subscriptions = [];
  
/* Holds the used applications. */
  List<TrustedApplication> applications = [];
  
/* The wrapper of the ip restrictions for the user. */
  IpRestrictions restrictions = null;
  
/* The user name. */
  String user = null;
  
/* The language. */
  String language = null;
  
/* The parent. */
  User parent = null;
  

  bool directCustomer = null;
  
  User();

  @override
  String toString() {
    return 'User[created=$created, updated=$updated, context=$context, password=$password, defaultEmail=$defaultEmail, status=$status, substatus=$substatus, authType=$authType, details=$details, lock=$lock, acls=$acls, profiles=$profiles, ancestors=$ancestors, customer=$customer, nameServerGroups=$nameServerGroups, subscriptions=$subscriptions, applications=$applications, restrictions=$restrictions, user=$user, language=$language, parent=$parent, directCustomer=$directCustomer, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    context =
        json['context']
    ;
    password =
        json['password']
    ;
    defaultEmail =
        json['defaultEmail']
    ;
    status =
        json['status']
    ;
    substatus =
        json['substatus']
    ;
    authType =
      
      
      new AuthType.fromJson(json['authType'])
;
    details =
      
      
      new UserDetails.fromJson(json['details'])
;
    lock =
      
      
      new UserLock.fromJson(json['lock'])
;
    acls =
      
      
      new UserAcls.fromJson(json['acls'])
;
    profiles =
      
      
      new UserProfileViews.fromJson(json['profiles'])
;
    ancestors =
      BasicUser.listFromJson(json['ancestors'])
;
    customer =
      
      
      new BasicCustomer.fromJson(json['customer'])
;
    nameServerGroups =
      VirtualNameServerGroup.listFromJson(json['nameServerGroups'])
;
    subscriptions =
      Subscription.listFromJson(json['subscriptions'])
;
    applications =
      TrustedApplication.listFromJson(json['applications'])
;
    restrictions =
      
      
      new IpRestrictions.fromJson(json['restrictions'])
;
    user =
        json['user']
    ;
    language =
        json['language']
    ;
    parent =
      
      
      new User.fromJson(json['parent'])
;
    directCustomer =
        json['directCustomer']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'context': context,
      'password': password,
      'defaultEmail': defaultEmail,
      'status': status,
      'substatus': substatus,
      'authType': authType,
      'details': details,
      'lock': lock,
      'acls': acls,
      'profiles': profiles,
      'ancestors': ancestors,
      'customer': customer,
      'nameServerGroups': nameServerGroups,
      'subscriptions': subscriptions,
      'applications': applications,
      'restrictions': restrictions,
      'user': user,
      'language': language,
      'parent': parent,
      'directCustomer': directCustomer
     };
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? new List<User>() : json.map((value) => new User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, User>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new User.fromJson(value));
    }
    return map;
  }
}

