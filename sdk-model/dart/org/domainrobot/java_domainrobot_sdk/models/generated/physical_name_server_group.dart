part of swagger.api;

class PhysicalNameServerGroup {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The custom label for the group */
  String name = null;
  
/* The article label of the name server group, will be used for each created zone using these group */
  String articleLabel = null;
  
/* If the group supports dnssec */
  bool dnssec = null;
  
/* If the group contains statistical data for a zone */
  bool statistic = null;
  
  PhysicalNameServerGroup();

  @override
  String toString() {
    return 'PhysicalNameServerGroup[created=$created, updated=$updated, name=$name, articleLabel=$articleLabel, dnssec=$dnssec, statistic=$statistic, ]';
  }

  PhysicalNameServerGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    name =
        json['name']
    ;
    articleLabel =
        json['articleLabel']
    ;
    dnssec =
        json['dnssec']
    ;
    statistic =
        json['statistic']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'name': name,
      'articleLabel': articleLabel,
      'dnssec': dnssec,
      'statistic': statistic
     };
  }

  static List<PhysicalNameServerGroup> listFromJson(List<dynamic> json) {
    return json == null ? new List<PhysicalNameServerGroup>() : json.map((value) => new PhysicalNameServerGroup.fromJson(value)).toList();
  }

  static Map<String, PhysicalNameServerGroup> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PhysicalNameServerGroup>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PhysicalNameServerGroup.fromJson(value));
    }
    return map;
  }
}

