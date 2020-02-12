part of swagger.api;

class PreregConfig {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  

  String name = null;
  

  String phase = null;
  

  DateTime confirmationStart = null;
  

  DateTime confirmationEnd = null;
  

  DateTime periodStart = null;
  

  DateTime periodEnd = null;
  

  String nicMemberLabel = null;
  

  DateTime niccomStart = null;
  

  DateTime niccomEnd = null;
  

  bool autoupdateDns = null;
  

  String category = null;
  

  String uiFields = null;
  

  RegistrationTypeConstants registrationType = null;
  

  MessageTypeConstants messageType = null;
  

  TimePeriod minPeriod = null;
  
  PreregConfig();

  @override
  String toString() {
    return 'PreregConfig[created=$created, updated=$updated, name=$name, phase=$phase, confirmationStart=$confirmationStart, confirmationEnd=$confirmationEnd, periodStart=$periodStart, periodEnd=$periodEnd, nicMemberLabel=$nicMemberLabel, niccomStart=$niccomStart, niccomEnd=$niccomEnd, autoupdateDns=$autoupdateDns, category=$category, uiFields=$uiFields, registrationType=$registrationType, messageType=$messageType, minPeriod=$minPeriod, ]';
  }

  PreregConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    name =
        json['name']
    ;
    phase =
        json['phase']
    ;
    confirmationStart = json['confirmationStart'] == null ? null : DateTime.parse(json['confirmationStart']);
    confirmationEnd = json['confirmationEnd'] == null ? null : DateTime.parse(json['confirmationEnd']);
    periodStart = json['periodStart'] == null ? null : DateTime.parse(json['periodStart']);
    periodEnd = json['periodEnd'] == null ? null : DateTime.parse(json['periodEnd']);
    nicMemberLabel =
        json['nicMemberLabel']
    ;
    niccomStart = json['niccomStart'] == null ? null : DateTime.parse(json['niccomStart']);
    niccomEnd = json['niccomEnd'] == null ? null : DateTime.parse(json['niccomEnd']);
    autoupdateDns =
        json['autoupdateDns']
    ;
    category =
        json['category']
    ;
    uiFields =
        json['uiFields']
    ;
    registrationType =
      
      
      new RegistrationTypeConstants.fromJson(json['registrationType'])
;
    messageType =
      
      
      new MessageTypeConstants.fromJson(json['messageType'])
;
    minPeriod =
      
      
      new TimePeriod.fromJson(json['minPeriod'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'name': name,
      'phase': phase,
      'confirmationStart': confirmationStart == null ? '' : confirmationStart.toUtc().toIso8601String(),
      'confirmationEnd': confirmationEnd == null ? '' : confirmationEnd.toUtc().toIso8601String(),
      'periodStart': periodStart == null ? '' : periodStart.toUtc().toIso8601String(),
      'periodEnd': periodEnd == null ? '' : periodEnd.toUtc().toIso8601String(),
      'nicMemberLabel': nicMemberLabel,
      'niccomStart': niccomStart == null ? '' : niccomStart.toUtc().toIso8601String(),
      'niccomEnd': niccomEnd == null ? '' : niccomEnd.toUtc().toIso8601String(),
      'autoupdateDns': autoupdateDns,
      'category': category,
      'uiFields': uiFields,
      'registrationType': registrationType,
      'messageType': messageType,
      'minPeriod': minPeriod
     };
  }

  static List<PreregConfig> listFromJson(List<dynamic> json) {
    return json == null ? new List<PreregConfig>() : json.map((value) => new PreregConfig.fromJson(value)).toList();
  }

  static Map<String, PreregConfig> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PreregConfig>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PreregConfig.fromJson(value));
    }
    return map;
  }
}

