part of swagger.api;

class DomainMonitoringSetup {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The data */
  String data = null;
  
  DomainMonitoringSetup();

  @override
  String toString() {
    return 'DomainMonitoringSetup[created=$created, updated=$updated, data=$data, ]';
  }

  DomainMonitoringSetup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    data =
        json['data']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'data': data
     };
  }

  static List<DomainMonitoringSetup> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainMonitoringSetup>() : json.map((value) => new DomainMonitoringSetup.fromJson(value)).toList();
  }

  static Map<String, DomainMonitoringSetup> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainMonitoringSetup>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainMonitoringSetup.fromJson(value));
    }
    return map;
  }
}

