part of swagger.api;

class IpRestriction {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The restriction level */
  IpRestrictionTypeConstants type = null;
  
/* A net address or ip address */
  String address = null;
  
  IpRestriction();

  @override
  String toString() {
    return 'IpRestriction[created=$created, updated=$updated, type=$type, address=$address, ]';
  }

  IpRestriction.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    type =
      
      
      new IpRestrictionTypeConstants.fromJson(json['type'])
;
    address =
        json['address']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'type': type,
      'address': address
     };
  }

  static List<IpRestriction> listFromJson(List<dynamic> json) {
    return json == null ? new List<IpRestriction>() : json.map((value) => new IpRestriction.fromJson(value)).toList();
  }

  static Map<String, IpRestriction> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IpRestriction>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IpRestriction.fromJson(value));
    }
    return map;
  }
}

