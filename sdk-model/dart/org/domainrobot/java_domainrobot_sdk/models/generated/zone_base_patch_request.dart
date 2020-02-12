part of swagger.api;

class ZoneBasePatchRequest {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* Zone name */
  String origin = null;
  
/* The idn version of the origin. */
  String idn = null;
  
/* Only for ns_action: \"primary\"  and \"complete\" */
  Soa soa = null;
  
/* Enables dnssec */
  bool dnssec = null;
  
/* The name of the name server group, if the zone is managed by */
  String nameServerGroup = null;
  
/* Allow AXFR */
  bool allowTransfer = null;
  
/* The owner of the object */
  BasicUser owner = null;
  
/* The updating user of the object */
  BasicUser updater = null;
  
/* The id of the related log-entry. */
  int logId = null;
  
/* A custom field. Can only be updated via PUT /zone/{name}/{nameserver}/_comment. Requires appropriate ACLs. */
  String comment = null;
  
/* true if the domain is represented in the domain safe */
  bool domainsafe = null;
  
/* Nameserver, the zone is copied from via AXFR (for zone_import) */
  String source = null;
  
/* System name server to look up the zone to copy */
  String sourceVirtualHostname = null;
  
/* Adds new zone garnts to the zone */
  List<String> zoneGrantsAdd = [];
  
/* Removes the zone garnts if exists. */
  List<String> zoneGrantsRem = [];
  
/* List of name servers */
  List<NameServer> nameServers = [];
  
/* IP address of the zone (A record) */
  MainIp main = null;
  
/* Automatic generation of resource records \"www\" */
  bool wwwInclude = null;
  
/* The first nameserver managed by the system */
  String virtualNameServer = null;
  
/* The free text records. */
  List<String> freeText = [];
  
/* Additional nameserver check is proceeded */
  NameserverActionConstants action = null;
  
/* The grants where transfer (axfr) can be done from. */
  List<String> grants = [];
  
/* The resource records. */
  List<ResourceRecord> resourceRecords = [];
  
/* The resource object identifier of the zone */
  int roid = null;
  
/* Adds new zone records to the extistings */
  List<ResourceRecord> resourceRecordsAdd = [];
  
/* Removes the zone records if exists. */
  List<ResourceRecord> resourceRecordsRem = [];
  
  ZoneBasePatchRequest();

  @override
  String toString() {
    return 'ZoneBasePatchRequest[created=$created, updated=$updated, origin=$origin, idn=$idn, soa=$soa, dnssec=$dnssec, nameServerGroup=$nameServerGroup, allowTransfer=$allowTransfer, owner=$owner, updater=$updater, logId=$logId, comment=$comment, domainsafe=$domainsafe, source=$source, sourceVirtualHostname=$sourceVirtualHostname, zoneGrantsAdd=$zoneGrantsAdd, zoneGrantsRem=$zoneGrantsRem, nameServers=$nameServers, main=$main, wwwInclude=$wwwInclude, virtualNameServer=$virtualNameServer, freeText=$freeText, action=$action, grants=$grants, resourceRecords=$resourceRecords, roid=$roid, resourceRecordsAdd=$resourceRecordsAdd, resourceRecordsRem=$resourceRecordsRem, ]';
  }

  ZoneBasePatchRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    origin =
        json['origin']
    ;
    idn =
        json['idn']
    ;
    soa =
      
      
      new Soa.fromJson(json['soa'])
;
    dnssec =
        json['dnssec']
    ;
    nameServerGroup =
        json['nameServerGroup']
    ;
    allowTransfer =
        json['allowTransfer']
    ;
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    logId =
        json['logId']
    ;
    comment =
        json['comment']
    ;
    domainsafe =
        json['domainsafe']
    ;
    source =
        json['source']
    ;
    sourceVirtualHostname =
        json['sourceVirtualHostname']
    ;
    zoneGrantsAdd =
        (json['zoneGrantsAdd'] as List).map((item) => item as String).toList()
    ;
    zoneGrantsRem =
        (json['zoneGrantsRem'] as List).map((item) => item as String).toList()
    ;
    nameServers =
      NameServer.listFromJson(json['nameServers'])
;
    main =
      
      
      new MainIp.fromJson(json['main'])
;
    wwwInclude =
        json['wwwInclude']
    ;
    virtualNameServer =
        json['virtualNameServer']
    ;
    freeText =
        (json['freeText'] as List).map((item) => item as String).toList()
    ;
    action =
      
      
      new NameserverActionConstants.fromJson(json['action'])
;
    grants =
        (json['grants'] as List).map((item) => item as String).toList()
    ;
    resourceRecords =
      ResourceRecord.listFromJson(json['resourceRecords'])
;
    roid =
        json['roid']
    ;
    resourceRecordsAdd =
      ResourceRecord.listFromJson(json['resourceRecordsAdd'])
;
    resourceRecordsRem =
      ResourceRecord.listFromJson(json['resourceRecordsRem'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'origin': origin,
      'idn': idn,
      'soa': soa,
      'dnssec': dnssec,
      'nameServerGroup': nameServerGroup,
      'allowTransfer': allowTransfer,
      'owner': owner,
      'updater': updater,
      'logId': logId,
      'comment': comment,
      'domainsafe': domainsafe,
      'source': source,
      'sourceVirtualHostname': sourceVirtualHostname,
      'zoneGrantsAdd': zoneGrantsAdd,
      'zoneGrantsRem': zoneGrantsRem,
      'nameServers': nameServers,
      'main': main,
      'wwwInclude': wwwInclude,
      'virtualNameServer': virtualNameServer,
      'freeText': freeText,
      'action': action,
      'grants': grants,
      'resourceRecords': resourceRecords,
      'roid': roid,
      'resourceRecordsAdd': resourceRecordsAdd,
      'resourceRecordsRem': resourceRecordsRem
     };
  }

  static List<ZoneBasePatchRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<ZoneBasePatchRequest>() : json.map((value) => new ZoneBasePatchRequest.fromJson(value)).toList();
  }

  static Map<String, ZoneBasePatchRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ZoneBasePatchRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ZoneBasePatchRequest.fromJson(value));
    }
    return map;
  }
}

