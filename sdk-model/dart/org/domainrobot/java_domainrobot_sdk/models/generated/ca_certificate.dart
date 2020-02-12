part of swagger.api;

class CaCertificate {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The type of the intermediate certificate. */
  String caType = null;
  
/* The plain intermediate certificate. */
  String caCertificate = null;
  
  CaCertificate();

  @override
  String toString() {
    return 'CaCertificate[created=$created, updated=$updated, caType=$caType, caCertificate=$caCertificate, ]';
  }

  CaCertificate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    caType =
        json['caType']
    ;
    caCertificate =
        json['caCertificate']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'caType': caType,
      'caCertificate': caCertificate
     };
  }

  static List<CaCertificate> listFromJson(List<dynamic> json) {
    return json == null ? new List<CaCertificate>() : json.map((value) => new CaCertificate.fromJson(value)).toList();
  }

  static Map<String, CaCertificate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CaCertificate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CaCertificate.fromJson(value));
    }
    return map;
  }
}

