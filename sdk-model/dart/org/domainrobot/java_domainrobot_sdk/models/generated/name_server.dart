part of swagger.api;

class NameServer {
  /* Host name of the nameserver. */
  String name = null;
  
/* The time to live. */
  int ttl = null;
  
/* The ip addresses. */
  List<String> ipAddresses = [];
  
  NameServer();

  @override
  String toString() {
    return 'NameServer[name=$name, ttl=$ttl, ipAddresses=$ipAddresses, ]';
  }

  NameServer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    ttl =
        json['ttl']
    ;
    ipAddresses =
        (json['ipAddresses'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'ttl': ttl,
      'ipAddresses': ipAddresses
     };
  }

  static List<NameServer> listFromJson(List<dynamic> json) {
    return json == null ? new List<NameServer>() : json.map((value) => new NameServer.fromJson(value)).toList();
  }

  static Map<String, NameServer> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NameServer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NameServer.fromJson(value));
    }
    return map;
  }
}

