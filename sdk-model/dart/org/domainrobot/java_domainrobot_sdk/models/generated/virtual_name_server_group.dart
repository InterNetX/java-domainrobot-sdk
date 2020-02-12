part of swagger.api;

class VirtualNameServerGroup {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updating user of the object. */
  BasicUser updater = null;
  
/* The custom label for the group */
  String name = null;
  
/* The useDefaultIps */
  bool useDefaultIps = null;
  
/* The name servers of the group. */
  List<VirtualNameServer> nameServers = [];
  
/* The custom label for the group */
  PhysicalNameServerGroup systemNameServerGroup = null;
  
  VirtualNameServerGroup();

  @override
  String toString() {
    return 'VirtualNameServerGroup[created=$created, updated=$updated, owner=$owner, updater=$updater, name=$name, useDefaultIps=$useDefaultIps, nameServers=$nameServers, systemNameServerGroup=$systemNameServerGroup, ]';
  }

  VirtualNameServerGroup.fromJson(Map<String, dynamic> json) {
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
    useDefaultIps =
        json['useDefaultIps']
    ;
    nameServers =
      VirtualNameServer.listFromJson(json['nameServers'])
;
    systemNameServerGroup =
      
      
      new PhysicalNameServerGroup.fromJson(json['systemNameServerGroup'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'name': name,
      'useDefaultIps': useDefaultIps,
      'nameServers': nameServers,
      'systemNameServerGroup': systemNameServerGroup
     };
  }

  static List<VirtualNameServerGroup> listFromJson(List<dynamic> json) {
    return json == null ? new List<VirtualNameServerGroup>() : json.map((value) => new VirtualNameServerGroup.fromJson(value)).toList();
  }

  static Map<String, VirtualNameServerGroup> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VirtualNameServerGroup>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VirtualNameServerGroup.fromJson(value));
    }
    return map;
  }
}

