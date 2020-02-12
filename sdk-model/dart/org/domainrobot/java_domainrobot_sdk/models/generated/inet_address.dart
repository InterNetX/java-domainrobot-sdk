part of swagger.api;

class InetAddress {
    InetAddress();

  @override
  String toString() {
    return 'InetAddress[]';
  }

  InetAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<InetAddress> listFromJson(List<dynamic> json) {
    return json == null ? new List<InetAddress>() : json.map((value) => new InetAddress.fromJson(value)).toList();
  }

  static Map<String, InetAddress> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InetAddress>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InetAddress.fromJson(value));
    }
    return map;
  }
}

