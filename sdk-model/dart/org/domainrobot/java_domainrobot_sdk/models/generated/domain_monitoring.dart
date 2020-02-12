part of swagger.api;

class DomainMonitoring {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updating user of the object. */
  BasicUser updater = null;
  
/* The name of the domain. */
  String name = null;
  
/* The idn version of the domain. */
  String idn = null;
  
/* The notification mobile phone numbers. */
  List<Phone> notificationMobiles = [];
  
/* The ocval */
  bool ocval = null;
  
/* The cancelation */
  bool cancelation = null;
  
/* The removed */
  bool removed = null;
  
/* The monitoringSetups */
  List<DomainMonitoringSetup> monitoringSetups = [];
  
/* The notification email-addresses. */
  List<String> notificationEmails = [];
  
  DomainMonitoring();

  @override
  String toString() {
    return 'DomainMonitoring[created=$created, updated=$updated, owner=$owner, updater=$updater, name=$name, idn=$idn, notificationMobiles=$notificationMobiles, ocval=$ocval, cancelation=$cancelation, removed=$removed, monitoringSetups=$monitoringSetups, notificationEmails=$notificationEmails, ]';
  }

  DomainMonitoring.fromJson(Map<String, dynamic> json) {
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
    idn =
        json['idn']
    ;
    notificationMobiles =
      Phone.listFromJson(json['notificationMobiles'])
;
    ocval =
        json['ocval']
    ;
    cancelation =
        json['cancelation']
    ;
    removed =
        json['removed']
    ;
    monitoringSetups =
      DomainMonitoringSetup.listFromJson(json['monitoringSetups'])
;
    notificationEmails =
        (json['notificationEmails'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'name': name,
      'idn': idn,
      'notificationMobiles': notificationMobiles,
      'ocval': ocval,
      'cancelation': cancelation,
      'removed': removed,
      'monitoringSetups': monitoringSetups,
      'notificationEmails': notificationEmails
     };
  }

  static List<DomainMonitoring> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainMonitoring>() : json.map((value) => new DomainMonitoring.fromJson(value)).toList();
  }

  static Map<String, DomainMonitoring> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainMonitoring>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainMonitoring.fromJson(value));
    }
    return map;
  }
}

