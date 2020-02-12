part of swagger.api;

class Id4MeAgent {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updater of the object. */
  BasicUser updater = null;
  
/* External reference */
  String externalReference = null;
  
/* Virtual host with certificate data */
  VhostCertificate certificate = null;
  
/* Layout properties */
  Configuration layoutAddon = null;
  
/* Fully qualified domain name */
  String name = null;
  
/* Agent status */
  Id4MeAgentStatus status = null;
  
/* List of dns text records */
  List<String> records = [];
  
  Id4MeAgent();

  @override
  String toString() {
    return 'Id4MeAgent[created=$created, updated=$updated, owner=$owner, updater=$updater, externalReference=$externalReference, certificate=$certificate, layoutAddon=$layoutAddon, name=$name, status=$status, records=$records, ]';
  }

  Id4MeAgent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    externalReference =
        json['externalReference']
    ;
    certificate =
      
      
      new VhostCertificate.fromJson(json['certificate'])
;
    layoutAddon =
      
      
      new Configuration.fromJson(json['layoutAddon'])
;
    name =
        json['name']
    ;
    status =
      
      
      new Id4MeAgentStatus.fromJson(json['status'])
;
    records =
        (json['records'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'externalReference': externalReference,
      'certificate': certificate,
      'layoutAddon': layoutAddon,
      'name': name,
      'status': status,
      'records': records
     };
  }

  static List<Id4MeAgent> listFromJson(List<dynamic> json) {
    return json == null ? new List<Id4MeAgent>() : json.map((value) => new Id4MeAgent.fromJson(value)).toList();
  }

  static Map<String, Id4MeAgent> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Id4MeAgent>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Id4MeAgent.fromJson(value));
    }
    return map;
  }
}

