part of swagger.api;

class AuEligibilityIdTypeConstants {
  /// The underlying value of this enum member.
  String value;

  AuEligibilityIdTypeConstants._internal(this.value);

  static AuEligibilityIdTypeConstants aCN_ = AuEligibilityIdTypeConstants._internal("ACN");
  static AuEligibilityIdTypeConstants aBN_ = AuEligibilityIdTypeConstants._internal("ABN");
  static AuEligibilityIdTypeConstants vICBN_ = AuEligibilityIdTypeConstants._internal("VIC_BN");
  static AuEligibilityIdTypeConstants nSWBN_ = AuEligibilityIdTypeConstants._internal("NSW_BN");
  static AuEligibilityIdTypeConstants sA_ = AuEligibilityIdTypeConstants._internal("SA");
  static AuEligibilityIdTypeConstants bN_ = AuEligibilityIdTypeConstants._internal("BN");
  static AuEligibilityIdTypeConstants nTBN_ = AuEligibilityIdTypeConstants._internal("NT_BN");
  static AuEligibilityIdTypeConstants wABN_ = AuEligibilityIdTypeConstants._internal("WA_BN");
  static AuEligibilityIdTypeConstants tASBN_ = AuEligibilityIdTypeConstants._internal("TAS_BN");
  static AuEligibilityIdTypeConstants aCTBN_ = AuEligibilityIdTypeConstants._internal("ACT_BN");
  static AuEligibilityIdTypeConstants qLDBN_ = AuEligibilityIdTypeConstants._internal("QLD_BN");
  static AuEligibilityIdTypeConstants tM_ = AuEligibilityIdTypeConstants._internal("TM");
  static AuEligibilityIdTypeConstants oTHER_ = AuEligibilityIdTypeConstants._internal("OTHER");

  AuEligibilityIdTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "ACN": value = data; break;
          case "ABN": value = data; break;
          case "VIC_BN": value = data; break;
          case "NSW_BN": value = data; break;
          case "SA": value = data; break;
          case "BN": value = data; break;
          case "NT_BN": value = data; break;
          case "WA_BN": value = data; break;
          case "TAS_BN": value = data; break;
          case "ACT_BN": value = data; break;
          case "QLD_BN": value = data; break;
          case "TM": value = data; break;
          case "OTHER": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(AuEligibilityIdTypeConstants data) {
    return data.value;
  }
}

