part of swagger.api;

class BackupMx {
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
  
  BackupMx();

  @override
  String toString() {
    return 'BackupMx[domain=$domain, idn=$idn, created=$created, updated=$updated, owner=$owner, updater=$updater, ]';
  }

  BackupMx.fromJson(Map<String, dynamic> json) {
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
  }

  Map<String, dynamic> toJson() {
    return {
      'domain': domain,
      'idn': idn,
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater
     };
  }

  static List<BackupMx> listFromJson(List<dynamic> json) {
    return json == null ? new List<BackupMx>() : json.map((value) => new BackupMx.fromJson(value)).toList();
  }

  static Map<String, BackupMx> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BackupMx>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BackupMx.fromJson(value));
    }
    return map;
  }
}

