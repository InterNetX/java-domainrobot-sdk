part of swagger.api;

class DomainExtensions {
  
  DomainParkingExtensions parkingExtensions = null;
  

  DomainTmchClaimNoticeExtensions tmchClaimsNoticeExtensions = null;
  
  DomainExtensions();

  @override
  String toString() {
    return 'DomainExtensions[parkingExtensions=$parkingExtensions, tmchClaimsNoticeExtensions=$tmchClaimsNoticeExtensions, ]';
  }

  DomainExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    parkingExtensions =
      
      
      new DomainParkingExtensions.fromJson(json['parkingExtensions'])
;
    tmchClaimsNoticeExtensions =
      
      
      new DomainTmchClaimNoticeExtensions.fromJson(json['tmchClaimsNoticeExtensions'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'parkingExtensions': parkingExtensions,
      'tmchClaimsNoticeExtensions': tmchClaimsNoticeExtensions
     };
  }

  static List<DomainExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainExtensions>() : json.map((value) => new DomainExtensions.fromJson(value)).toList();
  }

  static Map<String, DomainExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainExtensions.fromJson(value));
    }
    return map;
  }
}

