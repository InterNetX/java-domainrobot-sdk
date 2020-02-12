part of swagger.api;

class WhoisStatus {
  /* The whois status */
  DomainStudioDomainStatus status = null;
  
  WhoisStatus();

  @override
  String toString() {
    return 'WhoisStatus[status=$status, ]';
  }

  WhoisStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status =
      
      
      new DomainStudioDomainStatus.fromJson(json['status'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status
     };
  }

  static List<WhoisStatus> listFromJson(List<dynamic> json) {
    return json == null ? new List<WhoisStatus>() : json.map((value) => new WhoisStatus.fromJson(value)).toList();
  }

  static Map<String, WhoisStatus> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WhoisStatus>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WhoisStatus.fromJson(value));
    }
    return map;
  }
}

