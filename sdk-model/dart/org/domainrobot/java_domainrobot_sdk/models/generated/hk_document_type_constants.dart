part of swagger.api;

class HkDocumentTypeConstants {
  /// The underlying value of this enum member.
  String value;

  HkDocumentTypeConstants._internal(this.value);

  static HkDocumentTypeConstants hKID_ = HkDocumentTypeConstants._internal("HKID");
  static HkDocumentTypeConstants oTHID_ = HkDocumentTypeConstants._internal("OTHID");
  static HkDocumentTypeConstants pASSNO_ = HkDocumentTypeConstants._internal("PASSNO");
  static HkDocumentTypeConstants bIRTHCERT_ = HkDocumentTypeConstants._internal("BIRTHCERT");
  static HkDocumentTypeConstants oTHIDV_ = HkDocumentTypeConstants._internal("OTHIDV");
  static HkDocumentTypeConstants bR_ = HkDocumentTypeConstants._internal("BR");
  static HkDocumentTypeConstants cI_ = HkDocumentTypeConstants._internal("CI");
  static HkDocumentTypeConstants cRS_ = HkDocumentTypeConstants._internal("CRS");
  static HkDocumentTypeConstants hKSARG_ = HkDocumentTypeConstants._internal("HKSARG");
  static HkDocumentTypeConstants hKORDINANCE_ = HkDocumentTypeConstants._internal("HKORDINANCE");
  static HkDocumentTypeConstants oTHORG_ = HkDocumentTypeConstants._internal("OTHORG");

  HkDocumentTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "HKID": value = data; break;
          case "OTHID": value = data; break;
          case "PASSNO": value = data; break;
          case "BIRTHCERT": value = data; break;
          case "OTHIDV": value = data; break;
          case "BR": value = data; break;
          case "CI": value = data; break;
          case "CRS": value = data; break;
          case "HKSARG": value = data; break;
          case "HKORDINANCE": value = data; break;
          case "OTHORG": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(HkDocumentTypeConstants data) {
    return data.value;
  }
}

