part of swagger.api;

class ServiceEntity {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* Lorem Ipum */
  String label = null;
  
  ServiceEntity();

  @override
  String toString() {
    return 'ServiceEntity[created=$created, updated=$updated, label=$label, ]';
  }

  ServiceEntity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    label =
        json['label']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'label': label
     };
  }

  static List<ServiceEntity> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServiceEntity>() : json.map((value) => new ServiceEntity.fromJson(value)).toList();
  }

  static Map<String, ServiceEntity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServiceEntity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServiceEntity.fromJson(value));
    }
    return map;
  }
}

