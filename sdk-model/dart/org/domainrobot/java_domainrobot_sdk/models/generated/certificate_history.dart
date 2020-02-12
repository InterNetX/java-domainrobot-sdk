part of swagger.api;

class CertificateHistory {
  /* The serialnumber of the certificate. */
  String serialNumber = null;
  
/* The revoked date of the certificate. */
  DateTime revoked = null;
  
  CertificateHistory();

  @override
  String toString() {
    return 'CertificateHistory[serialNumber=$serialNumber, revoked=$revoked, ]';
  }

  CertificateHistory.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serialNumber =
        json['serialNumber']
    ;
    revoked = json['revoked'] == null ? null : DateTime.parse(json['revoked']);
  }

  Map<String, dynamic> toJson() {
    return {
      'serialNumber': serialNumber,
      'revoked': revoked == null ? '' : revoked.toUtc().toIso8601String()
     };
  }

  static List<CertificateHistory> listFromJson(List<dynamic> json) {
    return json == null ? new List<CertificateHistory>() : json.map((value) => new CertificateHistory.fromJson(value)).toList();
  }

  static Map<String, CertificateHistory> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CertificateHistory>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CertificateHistory.fromJson(value));
    }
    return map;
  }
}

