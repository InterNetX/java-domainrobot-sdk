part of swagger.api;

class ContactHkExtensions {
  /* The document types. */
  HkDocumentTypeConstants documentType = null;
  
/* Additional descriptions for OTHIDV and OTHORG. */
  String others = null;
  
/* Document number. */
  String documentNumber = null;
  
/* Country of licensure. */
  String documentOrigin = null;
  
/* Is the person 18 years of age or older. For Person only. */
  bool above18 = null;
  
/* The industry types. */
  HkIndustryTypeConstants industryType = null;
  
  ContactHkExtensions();

  @override
  String toString() {
    return 'ContactHkExtensions[documentType=$documentType, others=$others, documentNumber=$documentNumber, documentOrigin=$documentOrigin, above18=$above18, industryType=$industryType, ]';
  }

  ContactHkExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    documentType =
      
      
      new HkDocumentTypeConstants.fromJson(json['documentType'])
;
    others =
        json['others']
    ;
    documentNumber =
        json['documentNumber']
    ;
    documentOrigin =
        json['documentOrigin']
    ;
    above18 =
        json['above18']
    ;
    industryType =
      
      
      new HkIndustryTypeConstants.fromJson(json['industryType'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'documentType': documentType,
      'others': others,
      'documentNumber': documentNumber,
      'documentOrigin': documentOrigin,
      'above18': above18,
      'industryType': industryType
     };
  }

  static List<ContactHkExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactHkExtensions>() : json.map((value) => new ContactHkExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactHkExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactHkExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactHkExtensions.fromJson(value));
    }
    return map;
  }
}

