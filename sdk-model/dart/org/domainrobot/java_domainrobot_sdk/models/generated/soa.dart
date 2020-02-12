part of swagger.api;

class Soa {
  /* The seconds after the secondary should refresh the zone data */
  int refresh = null;
  
/* The seconds after the secondary should retry the zone data after the refresh has been timeouts */
  int retry = null;
  
/* The seconds after the zone data will not be delievered, if the zone could not be reached on the master. */
  int expire = null;
  

  int ttl = null;
  
/* The email address of the responsible of the zone */
  String email = null;
  
  Soa();

  @override
  String toString() {
    return 'Soa[refresh=$refresh, retry=$retry, expire=$expire, ttl=$ttl, email=$email, ]';
  }

  Soa.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    refresh =
        json['refresh']
    ;
    retry =
        json['retry']
    ;
    expire =
        json['expire']
    ;
    ttl =
        json['ttl']
    ;
    email =
        json['email']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'refresh': refresh,
      'retry': retry,
      'expire': expire,
      'ttl': ttl,
      'email': email
     };
  }

  static List<Soa> listFromJson(List<dynamic> json) {
    return json == null ? new List<Soa>() : json.map((value) => new Soa.fromJson(value)).toList();
  }

  static Map<String, Soa> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Soa>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Soa.fromJson(value));
    }
    return map;
  }
}

