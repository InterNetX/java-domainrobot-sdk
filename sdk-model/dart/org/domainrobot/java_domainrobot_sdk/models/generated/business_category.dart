part of swagger.api;

class BusinessCategory {
  /// The underlying value of this enum member.
  String value;

  BusinessCategory._internal(this.value);

  static BusinessCategory pRIVATEORGANIZATION_ = BusinessCategory._internal("PRIVATE_ORGANIZATION");
  static BusinessCategory gOVERNMENTENTITY_ = BusinessCategory._internal("GOVERNMENT_ENTITY");
  static BusinessCategory bUSINESSENTITY_ = BusinessCategory._internal("BUSINESS_ENTITY");

  BusinessCategory.fromJson(dynamic data) {
    switch (data) {
          case "PRIVATE_ORGANIZATION": value = data; break;
          case "GOVERNMENT_ENTITY": value = data; break;
          case "BUSINESS_ENTITY": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(BusinessCategory data) {
    return data.value;
  }
}

