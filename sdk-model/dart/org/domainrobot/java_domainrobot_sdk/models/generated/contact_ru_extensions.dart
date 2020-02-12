part of swagger.api;

class ContactRuExtensions {
  /* Taxpayer Identification Number (code). Mandatory for organisations which belong to the Russian Federation. */
  String taxpayerIdentificationNumber = null;
  
/* Territory-linked Taxpayer Number (kpp). Mandatory for organisations which belong to the Russian Federation. */
  String territoryLinkedTaxpayerNumber = null;
  
  ContactRuExtensions();

  @override
  String toString() {
    return 'ContactRuExtensions[taxpayerIdentificationNumber=$taxpayerIdentificationNumber, territoryLinkedTaxpayerNumber=$territoryLinkedTaxpayerNumber, ]';
  }

  ContactRuExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    taxpayerIdentificationNumber =
        json['taxpayerIdentificationNumber']
    ;
    territoryLinkedTaxpayerNumber =
        json['territoryLinkedTaxpayerNumber']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'taxpayerIdentificationNumber': taxpayerIdentificationNumber,
      'territoryLinkedTaxpayerNumber': territoryLinkedTaxpayerNumber
     };
  }

  static List<ContactRuExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactRuExtensions>() : json.map((value) => new ContactRuExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactRuExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactRuExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactRuExtensions.fromJson(value));
    }
    return map;
  }
}

