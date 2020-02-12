part of swagger.api;

class TmchMarkAddon {
  
  String courtName = null;
  

  DateTime protection = null;
  

  String courtProtectionCountry = null;
  

  String courtReference = null;
  

  String treatyTitle = null;
  

  DateTime treatyExecution = null;
  

  DateTime trademarkRegistration = null;
  

  String trademarkClassification = null;
  

  DateTime trademarkExpire = null;
  

  String trademarkNumber = null;
  

  String trademarkJurisdiction = null;
  

  String parentReference = null;
  
  TmchMarkAddon();

  @override
  String toString() {
    return 'TmchMarkAddon[courtName=$courtName, protection=$protection, courtProtectionCountry=$courtProtectionCountry, courtReference=$courtReference, treatyTitle=$treatyTitle, treatyExecution=$treatyExecution, trademarkRegistration=$trademarkRegistration, trademarkClassification=$trademarkClassification, trademarkExpire=$trademarkExpire, trademarkNumber=$trademarkNumber, trademarkJurisdiction=$trademarkJurisdiction, parentReference=$parentReference, ]';
  }

  TmchMarkAddon.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    courtName =
        json['courtName']
    ;
    protection = json['protection'] == null ? null : DateTime.parse(json['protection']);
    courtProtectionCountry =
        json['courtProtectionCountry']
    ;
    courtReference =
        json['courtReference']
    ;
    treatyTitle =
        json['treatyTitle']
    ;
    treatyExecution = json['treatyExecution'] == null ? null : DateTime.parse(json['treatyExecution']);
    trademarkRegistration = json['trademarkRegistration'] == null ? null : DateTime.parse(json['trademarkRegistration']);
    trademarkClassification =
        json['trademarkClassification']
    ;
    trademarkExpire = json['trademarkExpire'] == null ? null : DateTime.parse(json['trademarkExpire']);
    trademarkNumber =
        json['trademarkNumber']
    ;
    trademarkJurisdiction =
        json['trademarkJurisdiction']
    ;
    parentReference =
        json['parentReference']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'courtName': courtName,
      'protection': protection == null ? '' : protection.toUtc().toIso8601String(),
      'courtProtectionCountry': courtProtectionCountry,
      'courtReference': courtReference,
      'treatyTitle': treatyTitle,
      'treatyExecution': treatyExecution == null ? '' : treatyExecution.toUtc().toIso8601String(),
      'trademarkRegistration': trademarkRegistration == null ? '' : trademarkRegistration.toUtc().toIso8601String(),
      'trademarkClassification': trademarkClassification,
      'trademarkExpire': trademarkExpire == null ? '' : trademarkExpire.toUtc().toIso8601String(),
      'trademarkNumber': trademarkNumber,
      'trademarkJurisdiction': trademarkJurisdiction,
      'parentReference': parentReference
     };
  }

  static List<TmchMarkAddon> listFromJson(List<dynamic> json) {
    return json == null ? new List<TmchMarkAddon>() : json.map((value) => new TmchMarkAddon.fromJson(value)).toList();
  }

  static Map<String, TmchMarkAddon> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TmchMarkAddon>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TmchMarkAddon.fromJson(value));
    }
    return map;
  }
}

