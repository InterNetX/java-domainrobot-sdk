part of swagger.api;

class Id4meIdentity {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updater of the object. */
  BasicUser updater = null;
  
/* The ID4ME agent */
  Id4MeAgent agent = null;
  
/* Expiration of verification */
  DateTime verifyExpire = null;
  
/* Additional information */
  Configuration addons = null;
  
/* The generated magic link */
  String magicLink = null;
  
/* The initial claims */
  Claims claims = null;
  
/* Enables showing claims. */
  bool showClaims = null;
  
/* Url to redirect to passwort reset */
  String resetUrl = null;
  
/* time when reset url expire */
  DateTime resetUrlExpire = null;
  
/* Fully qualified domain name */
  String name = null;
  
/* status */
  IdentityStatus status = null;
  
/* The language. */
  String language = null;
  
/* DNS text records */
  List<String> record = [];
  
  Id4meIdentity();

  @override
  String toString() {
    return 'Id4meIdentity[created=$created, updated=$updated, owner=$owner, updater=$updater, agent=$agent, verifyExpire=$verifyExpire, addons=$addons, magicLink=$magicLink, claims=$claims, showClaims=$showClaims, resetUrl=$resetUrl, resetUrlExpire=$resetUrlExpire, name=$name, status=$status, language=$language, record=$record, ]';
  }

  Id4meIdentity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    agent =
      
      
      new Id4MeAgent.fromJson(json['agent'])
;
    verifyExpire = json['verifyExpire'] == null ? null : DateTime.parse(json['verifyExpire']);
    addons =
      
      
      new Configuration.fromJson(json['addons'])
;
    magicLink =
        json['magicLink']
    ;
    claims =
      
      
      new Claims.fromJson(json['claims'])
;
    showClaims =
        json['showClaims']
    ;
    resetUrl =
        json['resetUrl']
    ;
    resetUrlExpire = json['resetUrlExpire'] == null ? null : DateTime.parse(json['resetUrlExpire']);
    name =
        json['name']
    ;
    status =
      
      
      new IdentityStatus.fromJson(json['status'])
;
    language =
        json['language']
    ;
    record =
        (json['record'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'agent': agent,
      'verifyExpire': verifyExpire == null ? '' : verifyExpire.toUtc().toIso8601String(),
      'addons': addons,
      'magicLink': magicLink,
      'claims': claims,
      'showClaims': showClaims,
      'resetUrl': resetUrl,
      'resetUrlExpire': resetUrlExpire == null ? '' : resetUrlExpire.toUtc().toIso8601String(),
      'name': name,
      'status': status,
      'language': language,
      'record': record
     };
  }

  static List<Id4meIdentity> listFromJson(List<dynamic> json) {
    return json == null ? new List<Id4meIdentity>() : json.map((value) => new Id4meIdentity.fromJson(value)).toList();
  }

  static Map<String, Id4meIdentity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Id4meIdentity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Id4meIdentity.fromJson(value));
    }
    return map;
  }
}

