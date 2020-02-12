part of swagger.api;

class ContactCaExtensions {
  /* The cira cpr. */
  CiraCprConstants cpr = null;
  
/* The agreement version. */
  double agreementVersion = null;
  
/* The originating ip. */
  String originatingIp = null;
  
/* The official representative. */
  String officialRepresentative = null;
  
/* The trustee percentage. */
  double trusteePercentage = null;
  
  ContactCaExtensions();

  @override
  String toString() {
    return 'ContactCaExtensions[cpr=$cpr, agreementVersion=$agreementVersion, originatingIp=$originatingIp, officialRepresentative=$officialRepresentative, trusteePercentage=$trusteePercentage, ]';
  }

  ContactCaExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    cpr =
      
      
      new CiraCprConstants.fromJson(json['cpr'])
;
    agreementVersion =
        json['agreementVersion']
    ;
    originatingIp =
        json['originatingIp']
    ;
    officialRepresentative =
        json['officialRepresentative']
    ;
    trusteePercentage =
        json['trusteePercentage']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'cpr': cpr,
      'agreementVersion': agreementVersion,
      'originatingIp': originatingIp,
      'officialRepresentative': officialRepresentative,
      'trusteePercentage': trusteePercentage
     };
  }

  static List<ContactCaExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactCaExtensions>() : json.map((value) => new ContactCaExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactCaExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactCaExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactCaExtensions.fromJson(value));
    }
    return map;
  }
}

