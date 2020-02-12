part of swagger.api;

class DomainSafeObject {
  /* The type of the object. */
  String type = null;
  
/* The name of the object. */
  String name = null;
  
/* The idn of the object. */
  String idn = null;
  
/* The owner of the object */
  BasicUser owner = null;
  
/* The updating user of the object */
  BasicUser updater = null;
  
/* The updated date. */
  DateTime updated = null;
  
  DomainSafeObject();

  @override
  String toString() {
    return 'DomainSafeObject[type=$type, name=$name, idn=$idn, owner=$owner, updater=$updater, updated=$updated, ]';
  }

  DomainSafeObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        json['type']
    ;
    name =
        json['name']
    ;
    idn =
        json['idn']
    ;
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'name': name,
      'idn': idn,
      'owner': owner,
      'updater': updater,
      'updated': updated == null ? '' : updated.toUtc().toIso8601String()
     };
  }

  static List<DomainSafeObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainSafeObject>() : json.map((value) => new DomainSafeObject.fromJson(value)).toList();
  }

  static Map<String, DomainSafeObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainSafeObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainSafeObject.fromJson(value));
    }
    return map;
  }
}

