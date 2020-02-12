part of swagger.api;

class TrustedApplication {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updating user of the object. */
  BasicUser updater = null;
  
/* The user the trusted application belongs to. */
  BasicUser user = null;
  
/* The unique identifier for the trusted application. */
  String uuid = null;
  
/* The password for the trusted application. */
  String password = null;
  
/* The kind of application. */
  Application application = null;
  
/* The wrapper of the allowed functions for the trusted application. */
  TrustedApplicationFunctions functions = null;
  
/* The wrapper of the ip restrictions for the trusted application. */
  IpRestrictions restrictions = null;
  
/* The device, which uses the trusted app. */
  String device = null;
  
/* A comment for the trusted application. */
  String comment = null;
  
  TrustedApplication();

  @override
  String toString() {
    return 'TrustedApplication[created=$created, updated=$updated, owner=$owner, updater=$updater, user=$user, uuid=$uuid, password=$password, application=$application, functions=$functions, restrictions=$restrictions, device=$device, comment=$comment, ]';
  }

  TrustedApplication.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    user =
      
      
      new BasicUser.fromJson(json['user'])
;
    uuid =
        json['uuid']
    ;
    password =
        json['password']
    ;
    application =
      
      
      new Application.fromJson(json['application'])
;
    functions =
      
      
      new TrustedApplicationFunctions.fromJson(json['functions'])
;
    restrictions =
      
      
      new IpRestrictions.fromJson(json['restrictions'])
;
    device =
        json['device']
    ;
    comment =
        json['comment']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'user': user,
      'uuid': uuid,
      'password': password,
      'application': application,
      'functions': functions,
      'restrictions': restrictions,
      'device': device,
      'comment': comment
     };
  }

  static List<TrustedApplication> listFromJson(List<dynamic> json) {
    return json == null ? new List<TrustedApplication>() : json.map((value) => new TrustedApplication.fromJson(value)).toList();
  }

  static Map<String, TrustedApplication> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TrustedApplication>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TrustedApplication.fromJson(value));
    }
    return map;
  }
}

