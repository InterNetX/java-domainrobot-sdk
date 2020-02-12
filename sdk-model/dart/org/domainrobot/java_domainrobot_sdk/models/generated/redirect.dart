part of swagger.api;

class Redirect {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updater of the object. */
  BasicUser updater = null;
  
/* The domain to be redirected. Enter the domain with or without \"www\". */
  String source = null;
  
/* The URL of the target domain. Enter the domain without \"http://\" */
  String target = null;
  
/* Redirect type */
  RedirectTypeConstants type = null;
  
/* Redirect mode */
  RedirectModeConstants mode = null;
  
/* The domain, which the redirect belongs. */
  String domain = null;
  
/* Lorem Ipsum */
  String title = null;
  
/* Lorem Ipsum */
  List<String> backups = [];
  
/* The IDN version of the domain to be redirected. Enter the domain with or without \"www\". */
  String sourceIdn = null;
  
/* The IDN version of the URL of the target domain. Enter the domain without \"http://\" */
  String targetIdn = null;
  
/* The last dns connection. */
  DateTime lastSeen = null;
  
  Redirect();

  @override
  String toString() {
    return 'Redirect[created=$created, updated=$updated, owner=$owner, updater=$updater, source=$source, target=$target, type=$type, mode=$mode, domain=$domain, title=$title, backups=$backups, sourceIdn=$sourceIdn, targetIdn=$targetIdn, lastSeen=$lastSeen, ]';
  }

  Redirect.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    source =
        json['source']
    ;
    target =
        json['target']
    ;
    type =
      
      
      new RedirectTypeConstants.fromJson(json['type'])
;
    mode =
      
      
      new RedirectModeConstants.fromJson(json['mode'])
;
    domain =
        json['domain']
    ;
    title =
        json['title']
    ;
    backups =
        (json['backups'] as List).map((item) => item as String).toList()
    ;
    sourceIdn =
        json['sourceIdn']
    ;
    targetIdn =
        json['targetIdn']
    ;
    lastSeen = json['lastSeen'] == null ? null : DateTime.parse(json['lastSeen']);
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'source': source,
      'target': target,
      'type': type,
      'mode': mode,
      'domain': domain,
      'title': title,
      'backups': backups,
      'sourceIdn': sourceIdn,
      'targetIdn': targetIdn,
      'lastSeen': lastSeen == null ? '' : lastSeen.toUtc().toIso8601String()
     };
  }

  static List<Redirect> listFromJson(List<dynamic> json) {
    return json == null ? new List<Redirect>() : json.map((value) => new Redirect.fromJson(value)).toList();
  }

  static Map<String, Redirect> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Redirect>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Redirect.fromJson(value));
    }
    return map;
  }
}

