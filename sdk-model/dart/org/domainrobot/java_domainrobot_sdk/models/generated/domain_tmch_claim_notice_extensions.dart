part of swagger.api;

class DomainTmchClaimNoticeExtensions {
  /* The external refernce */
  String externalReference = null;
  
/* Date after the claim expires */
  DateTime notAfter = null;
  
/* The date of confirmation */
  DateTime confirmed = null;
  
/* The confirm ip */
  String confirmIp = null;
  
  DomainTmchClaimNoticeExtensions();

  @override
  String toString() {
    return 'DomainTmchClaimNoticeExtensions[externalReference=$externalReference, notAfter=$notAfter, confirmed=$confirmed, confirmIp=$confirmIp, ]';
  }

  DomainTmchClaimNoticeExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    externalReference =
        json['externalReference']
    ;
    notAfter = json['notAfter'] == null ? null : DateTime.parse(json['notAfter']);
    confirmed = json['confirmed'] == null ? null : DateTime.parse(json['confirmed']);
    confirmIp =
        json['confirmIp']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'externalReference': externalReference,
      'notAfter': notAfter == null ? '' : notAfter.toUtc().toIso8601String(),
      'confirmed': confirmed == null ? '' : confirmed.toUtc().toIso8601String(),
      'confirmIp': confirmIp
     };
  }

  static List<DomainTmchClaimNoticeExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainTmchClaimNoticeExtensions>() : json.map((value) => new DomainTmchClaimNoticeExtensions.fromJson(value)).toList();
  }

  static Map<String, DomainTmchClaimNoticeExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainTmchClaimNoticeExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainTmchClaimNoticeExtensions.fromJson(value));
    }
    return map;
  }
}

