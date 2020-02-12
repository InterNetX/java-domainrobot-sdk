part of swagger.api;

class VirtualNameServer {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updater of the object. */
  BasicUser updater = null;
  
/* Flag to show if the nameserver is active */
  bool active = null;
  
/* Host name of the nameserver. */
  Name name = null;
  
/* The mainAddress */
  InetAddress mainAddress = null;
  
/* The ip addresses. */
  List<String> ipAddresses = [];
  
  VirtualNameServer();

  @override
  String toString() {
    return 'VirtualNameServer[created=$created, updated=$updated, owner=$owner, updater=$updater, active=$active, name=$name, mainAddress=$mainAddress, ipAddresses=$ipAddresses, ]';
  }

  VirtualNameServer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    active =
        json['active']
    ;
    name =
      
      
      new Name.fromJson(json['name'])
;
    mainAddress =
      
      
      new InetAddress.fromJson(json['mainAddress'])
;
    ipAddresses =
        (json['ipAddresses'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'active': active,
      'name': name,
      'mainAddress': mainAddress,
      'ipAddresses': ipAddresses
     };
  }

  static List<VirtualNameServer> listFromJson(List<dynamic> json) {
    return json == null ? new List<VirtualNameServer>() : json.map((value) => new VirtualNameServer.fromJson(value)).toList();
  }

  static Map<String, VirtualNameServer> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VirtualNameServer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VirtualNameServer.fromJson(value));
    }
    return map;
  }
}

