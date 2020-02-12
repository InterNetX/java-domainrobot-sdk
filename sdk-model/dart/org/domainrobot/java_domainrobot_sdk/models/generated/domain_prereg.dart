part of swagger.api;

class DomainPrereg {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updater of the object. */
  BasicUser updater = null;
  
/* The owner contact. */
  Contact ownerc = null;
  
/* The administrative contact. */
  Contact adminc = null;
  
/* The technical contact reference. */
  Contact techc = null;
  
/* The dns contact. */
  Contact zonec = null;
  
/* The name of the domain. */
  String name = null;
  
/* The authinfo. */
  String authinfo = null;
  
/* The nameservers. */
  List<NameServer> nameServers = [];
  
/* The nameserver entries. */
  List<String> nameServerEntries = [];
  
/* The preregistration status of the domain. */
  DomainPreregStatusConstants status = null;
  
/* The preregistration extensions. */
  DomainPreregAddon extension = null;
  
/* The unique order reference. */
  String orderReference = null;
  
/* The tmchmark. */
  TmchMark tmchMark = null;
  
/* The preregistration configuration. */
  PreregConfig preregConfig = null;
  
/* The idn version of the name. */
  String idn = null;
  
/* The confirmation date. */
  DateTime confirmed = null;
  
/* Trustee active or not. */
  bool trustee = null;
  
/* The domain created date. */
  DateTime domainCreated = null;
  
/* The domain expire date. */
  DateTime domainExpire = null;
  
/* The registry status. */
  RegistryStatusConstants registryStatus = null;
  
/* Recommended */
  bool recommended = null;
  
  DomainPrereg();

  @override
  String toString() {
    return 'DomainPrereg[created=$created, updated=$updated, owner=$owner, updater=$updater, ownerc=$ownerc, adminc=$adminc, techc=$techc, zonec=$zonec, name=$name, authinfo=$authinfo, nameServers=$nameServers, nameServerEntries=$nameServerEntries, status=$status, extension=$extension, orderReference=$orderReference, tmchMark=$tmchMark, preregConfig=$preregConfig, idn=$idn, confirmed=$confirmed, trustee=$trustee, domainCreated=$domainCreated, domainExpire=$domainExpire, registryStatus=$registryStatus, recommended=$recommended, ]';
  }

  DomainPrereg.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    ownerc =
      
      
      new Contact.fromJson(json['ownerc'])
;
    adminc =
      
      
      new Contact.fromJson(json['adminc'])
;
    techc =
      
      
      new Contact.fromJson(json['techc'])
;
    zonec =
      
      
      new Contact.fromJson(json['zonec'])
;
    name =
        json['name']
    ;
    authinfo =
        json['authinfo']
    ;
    nameServers =
      NameServer.listFromJson(json['nameServers'])
;
    nameServerEntries =
        (json['nameServerEntries'] as List).map((item) => item as String).toList()
    ;
    status =
      
      
      new DomainPreregStatusConstants.fromJson(json['status'])
;
    extension =
      
      
      new DomainPreregAddon.fromJson(json['extension'])
;
    orderReference =
        json['orderReference']
    ;
    tmchMark =
      
      
      new TmchMark.fromJson(json['tmchMark'])
;
    preregConfig =
      
      
      new PreregConfig.fromJson(json['preregConfig'])
;
    idn =
        json['idn']
    ;
    confirmed = json['confirmed'] == null ? null : DateTime.parse(json['confirmed']);
    trustee =
        json['trustee']
    ;
    domainCreated = json['domainCreated'] == null ? null : DateTime.parse(json['domainCreated']);
    domainExpire = json['domainExpire'] == null ? null : DateTime.parse(json['domainExpire']);
    registryStatus =
      
      
      new RegistryStatusConstants.fromJson(json['registryStatus'])
;
    recommended =
        json['recommended']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'ownerc': ownerc,
      'adminc': adminc,
      'techc': techc,
      'zonec': zonec,
      'name': name,
      'authinfo': authinfo,
      'nameServers': nameServers,
      'nameServerEntries': nameServerEntries,
      'status': status,
      'extension': extension,
      'orderReference': orderReference,
      'tmchMark': tmchMark,
      'preregConfig': preregConfig,
      'idn': idn,
      'confirmed': confirmed == null ? '' : confirmed.toUtc().toIso8601String(),
      'trustee': trustee,
      'domainCreated': domainCreated == null ? '' : domainCreated.toUtc().toIso8601String(),
      'domainExpire': domainExpire == null ? '' : domainExpire.toUtc().toIso8601String(),
      'registryStatus': registryStatus,
      'recommended': recommended
     };
  }

  static List<DomainPrereg> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainPrereg>() : json.map((value) => new DomainPrereg.fromJson(value)).toList();
  }

  static Map<String, DomainPrereg> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainPrereg>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainPrereg.fromJson(value));
    }
    return map;
  }
}

