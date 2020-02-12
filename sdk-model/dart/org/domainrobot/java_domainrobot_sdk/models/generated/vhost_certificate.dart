part of swagger.api;

class VhostCertificate {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updater of the object. */
  BasicUser updater = null;
  
  VhostCertificate();

  @override
  String toString() {
    return 'VhostCertificate[created=$created, updated=$updated, owner=$owner, updater=$updater, ]';
  }

  VhostCertificate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater
     };
  }

  static List<VhostCertificate> listFromJson(List<dynamic> json) {
    return json == null ? new List<VhostCertificate>() : json.map((value) => new VhostCertificate.fromJson(value)).toList();
  }

  static Map<String, VhostCertificate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VhostCertificate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VhostCertificate.fromJson(value));
    }
    return map;
  }
}

