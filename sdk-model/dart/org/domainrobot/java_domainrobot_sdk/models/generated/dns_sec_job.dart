part of swagger.api;

class DNSSecJob {
    DNSSecJob();

  @override
  String toString() {
    return 'DNSSecJob[]';
  }

  DNSSecJob.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<DNSSecJob> listFromJson(List<dynamic> json) {
    return json == null ? new List<DNSSecJob>() : json.map((value) => new DNSSecJob.fromJson(value)).toList();
  }

  static Map<String, DNSSecJob> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DNSSecJob>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DNSSecJob.fromJson(value));
    }
    return map;
  }
}

