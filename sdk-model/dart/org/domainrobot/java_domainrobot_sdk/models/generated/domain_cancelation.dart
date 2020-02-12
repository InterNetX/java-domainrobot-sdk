part of swagger.api;

class DomainCancelation {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updater of the object. */
  BasicUser updater = null;
  

  String domain = null;
  
/* The date of the execution. Only necessary when ExecutionType equals DATE. */
  DateTime registryWhen = null;
  

  String gainingRegistrar = null;
  

  bool disconnect = null;
  
/* Some remarks */
  String notice = null;
  

  int logId = null;
  

  RegistryStatusConstants registryStatus = null;
  
/* The cancelation type. TRANSIT is only possible for certain TLDs. */
  CancelationTypeConstants type = null;
  
/* The execution type. */
  ExecutionTypeConstants execution = null;
  
  DomainCancelation();

  @override
  String toString() {
    return 'DomainCancelation[created=$created, updated=$updated, owner=$owner, updater=$updater, domain=$domain, registryWhen=$registryWhen, gainingRegistrar=$gainingRegistrar, disconnect=$disconnect, notice=$notice, logId=$logId, registryStatus=$registryStatus, type=$type, execution=$execution, ]';
  }

  DomainCancelation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    domain =
        json['domain']
    ;
    registryWhen = json['registryWhen'] == null ? null : DateTime.parse(json['registryWhen']);
    gainingRegistrar =
        json['gainingRegistrar']
    ;
    disconnect =
        json['disconnect']
    ;
    notice =
        json['notice']
    ;
    logId =
        json['logId']
    ;
    registryStatus =
      
      
      new RegistryStatusConstants.fromJson(json['registryStatus'])
;
    type =
      
      
      new CancelationTypeConstants.fromJson(json['type'])
;
    execution =
      
      
      new ExecutionTypeConstants.fromJson(json['execution'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'domain': domain,
      'registryWhen': registryWhen == null ? '' : registryWhen.toUtc().toIso8601String(),
      'gainingRegistrar': gainingRegistrar,
      'disconnect': disconnect,
      'notice': notice,
      'logId': logId,
      'registryStatus': registryStatus,
      'type': type,
      'execution': execution
     };
  }

  static List<DomainCancelation> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainCancelation>() : json.map((value) => new DomainCancelation.fromJson(value)).toList();
  }

  static Map<String, DomainCancelation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainCancelation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainCancelation.fromJson(value));
    }
    return map;
  }
}

