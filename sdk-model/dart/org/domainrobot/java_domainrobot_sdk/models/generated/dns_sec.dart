part of swagger.api;

class DNSSec {
  /* The algorithm. */
  int algorithm = null;
  
/* The flags. */
  int flags = null;
   // range from 256 to 257//
/* The protocol. */
  int protocol = null;
  
/* The public key. */
  String publicKey = null;
  
  DNSSec();

  @override
  String toString() {
    return 'DNSSec[algorithm=$algorithm, flags=$flags, protocol=$protocol, publicKey=$publicKey, ]';
  }

  DNSSec.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    algorithm =
        json['algorithm']
    ;
    flags =
        json['flags']
    ;
    protocol =
        json['protocol']
    ;
    publicKey =
        json['publicKey']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'algorithm': algorithm,
      'flags': flags,
      'protocol': protocol,
      'publicKey': publicKey
     };
  }

  static List<DNSSec> listFromJson(List<dynamic> json) {
    return json == null ? new List<DNSSec>() : json.map((value) => new DNSSec.fromJson(value)).toList();
  }

  static Map<String, DNSSec> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DNSSec>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DNSSec.fromJson(value));
    }
    return map;
  }
}

