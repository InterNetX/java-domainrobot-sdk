part of swagger.api;

class MailProxy {
  /* The domain of the mail exchange to backup */
  String domain = null;
  
/* The idn version of the domain. */
  String idn = null;
  
/* The date of the creation */
  DateTime created = null;
  
/* The date of the last updated */
  DateTime updated = null;
  
/* The owner of the entry */
  BasicUser owner = null;
  
/* The last updater of the entry */
  BasicUser updater = null;
  
/* The hostname of the target mailserver */
  String target = null;
  
/* email address of the administrator */
  String admin = null;
  
/* The protection level */
  ProtectionConstants protection = null;
  
/* The grey listing policy */
  bool greylisting = null;
  
/* The virus options to use */
  String virus = null;
  //enum virusEnum {  DISABLED,  QUARANTINE,  DISCARD,  ACCEPT,  };
/* The banned files options to use */
  String bannedFiles = null;
  //enum bannedFilesEnum {  DISABLED,  QUARANTINE,  DISCARD,  ACCEPT,  };
/* The mail header options to use */
  String header = null;
  //enum headerEnum {  DISABLED,  QUARANTINE,  DISCARD,  ACCEPT,  };
/* The spam policy options */
  SpamPolicy spam = null;
  
/* The white listed email addresses */
  MailList whitelist = null;
  
/* The black listed email addresses */
  MailList blacklist = null;
  
/* The exculded listed email addresses */
  MailList excludelist = null;
  
  MailProxy();

  @override
  String toString() {
    return 'MailProxy[domain=$domain, idn=$idn, created=$created, updated=$updated, owner=$owner, updater=$updater, target=$target, admin=$admin, protection=$protection, greylisting=$greylisting, virus=$virus, bannedFiles=$bannedFiles, header=$header, spam=$spam, whitelist=$whitelist, blacklist=$blacklist, excludelist=$excludelist, ]';
  }

  MailProxy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    domain =
        json['domain']
    ;
    idn =
        json['idn']
    ;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    target =
        json['target']
    ;
    admin =
        json['admin']
    ;
    protection =
      
      
      new ProtectionConstants.fromJson(json['protection'])
;
    greylisting =
        json['greylisting']
    ;
    virus =
        json['virus']
    ;
    bannedFiles =
        json['bannedFiles']
    ;
    header =
        json['header']
    ;
    spam =
      
      
      new SpamPolicy.fromJson(json['spam'])
;
    whitelist =
      
      
      new MailList.fromJson(json['whitelist'])
;
    blacklist =
      
      
      new MailList.fromJson(json['blacklist'])
;
    excludelist =
      
      
      new MailList.fromJson(json['excludelist'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'domain': domain,
      'idn': idn,
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'target': target,
      'admin': admin,
      'protection': protection,
      'greylisting': greylisting,
      'virus': virus,
      'bannedFiles': bannedFiles,
      'header': header,
      'spam': spam,
      'whitelist': whitelist,
      'blacklist': blacklist,
      'excludelist': excludelist
     };
  }

  static List<MailProxy> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailProxy>() : json.map((value) => new MailProxy.fromJson(value)).toList();
  }

  static Map<String, MailProxy> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailProxy>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailProxy.fromJson(value));
    }
    return map;
  }
}

