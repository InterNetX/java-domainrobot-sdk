part of swagger.api;

class DomainSafeAccount {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updating user of the object. */
  BasicUser updater = null;
  
/* The name of the object. */
  String name = null;
  
/* The mobile of the object. */
  Phone mobile = null;
  
/* The pin of the object. */
  String pin = null;
  
/* The revalidationNumber of the object. */
  Phone revalidationNumber = null;
  
/* The safeUser of the object. */
  List<DomainSafeUser> safeuser = [];
  
  DomainSafeAccount();

  @override
  String toString() {
    return 'DomainSafeAccount[created=$created, updated=$updated, owner=$owner, updater=$updater, name=$name, mobile=$mobile, pin=$pin, revalidationNumber=$revalidationNumber, safeuser=$safeuser, ]';
  }

  DomainSafeAccount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    name =
        json['name']
    ;
    mobile =
      
      
      new Phone.fromJson(json['mobile'])
;
    pin =
        json['pin']
    ;
    revalidationNumber =
      
      
      new Phone.fromJson(json['revalidationNumber'])
;
    safeuser =
      DomainSafeUser.listFromJson(json['safeuser'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'name': name,
      'mobile': mobile,
      'pin': pin,
      'revalidationNumber': revalidationNumber,
      'safeuser': safeuser
     };
  }

  static List<DomainSafeAccount> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainSafeAccount>() : json.map((value) => new DomainSafeAccount.fromJson(value)).toList();
  }

  static Map<String, DomainSafeAccount> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainSafeAccount>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainSafeAccount.fromJson(value));
    }
    return map;
  }
}

