part of swagger.api;

class ExtendedValidationExtension {
  /* Country of judicial formation */
  String joiCountryName = null;
  
/* The company number */
  String companyNumber = null;
  
/* Additional validation data required for certain Comodo products. */
  BusinessCategory businessCategory = null;
  
  ExtendedValidationExtension();

  @override
  String toString() {
    return 'ExtendedValidationExtension[joiCountryName=$joiCountryName, companyNumber=$companyNumber, businessCategory=$businessCategory, ]';
  }

  ExtendedValidationExtension.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    joiCountryName =
        json['joiCountryName']
    ;
    companyNumber =
        json['companyNumber']
    ;
    businessCategory =
      
      
      new BusinessCategory.fromJson(json['businessCategory'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'joiCountryName': joiCountryName,
      'companyNumber': companyNumber,
      'businessCategory': businessCategory
     };
  }

  static List<ExtendedValidationExtension> listFromJson(List<dynamic> json) {
    return json == null ? new List<ExtendedValidationExtension>() : json.map((value) => new ExtendedValidationExtension.fromJson(value)).toList();
  }

  static Map<String, ExtendedValidationExtension> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ExtendedValidationExtension>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ExtendedValidationExtension.fromJson(value));
    }
    return map;
  }
}

