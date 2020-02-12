part of swagger.api;

class MainIp {
  
  String address = null;
  
/* The ttl of main address to use */
  int ttl = null;
  
  MainIp();

  @override
  String toString() {
    return 'MainIp[address=$address, ttl=$ttl, ]';
  }

  MainIp.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    address =
        json['address']
    ;
    ttl =
        json['ttl']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'ttl': ttl
     };
  }

  static List<MainIp> listFromJson(List<dynamic> json) {
    return json == null ? new List<MainIp>() : json.map((value) => new MainIp.fromJson(value)).toList();
  }

  static Map<String, MainIp> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MainIp>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MainIp.fromJson(value));
    }
    return map;
  }
}

