part of swagger.api;

class ContactAuExtensions {
  /* The corresponding ID number for the eligibility name if applicable, if in doubt just use the same details as your Registrant ID. */
  String eligibilityId = null;
  
/* The type of Eligibility ID. */
  AuEligibilityIdTypeConstants eligibilityIdType = null;
  
/*  This field is usually optional and whether it is required is determined by your policy reason for the domain registration, if in doubt just use the same details as your Registrant Name. */
  String eligibilityName = null;
  
/* The type of entity that the registrant is. */
  AuEligibilityTypeConstants eligibilityType = null;
  
/* Reason for eligibility. */
  int policyReason = null;
  
/* Australian Business Number or Registered Business Number. */
  String registrantId = null;
  
/* Concerns the Registrant ID which you have selected in the Registrant ID form field. */
  AuRegistrantIdTypeConstants registrantIdType = null;
  
/* The registrants name. */
  String registrantName = null;
  
  ContactAuExtensions();

  @override
  String toString() {
    return 'ContactAuExtensions[eligibilityId=$eligibilityId, eligibilityIdType=$eligibilityIdType, eligibilityName=$eligibilityName, eligibilityType=$eligibilityType, policyReason=$policyReason, registrantId=$registrantId, registrantIdType=$registrantIdType, registrantName=$registrantName, ]';
  }

  ContactAuExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    eligibilityId =
        json['eligibilityId']
    ;
    eligibilityIdType =
      
      
      new AuEligibilityIdTypeConstants.fromJson(json['eligibilityIdType'])
;
    eligibilityName =
        json['eligibilityName']
    ;
    eligibilityType =
      
      
      new AuEligibilityTypeConstants.fromJson(json['eligibilityType'])
;
    policyReason =
        json['policyReason']
    ;
    registrantId =
        json['registrantId']
    ;
    registrantIdType =
      
      
      new AuRegistrantIdTypeConstants.fromJson(json['registrantIdType'])
;
    registrantName =
        json['registrantName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'eligibilityId': eligibilityId,
      'eligibilityIdType': eligibilityIdType,
      'eligibilityName': eligibilityName,
      'eligibilityType': eligibilityType,
      'policyReason': policyReason,
      'registrantId': registrantId,
      'registrantIdType': registrantIdType,
      'registrantName': registrantName
     };
  }

  static List<ContactAuExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactAuExtensions>() : json.map((value) => new ContactAuExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactAuExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactAuExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactAuExtensions.fromJson(value));
    }
    return map;
  }
}

