part of swagger.api;

class ProtectionConstants {
  /// The underlying value of this enum member.
  String value;

  ProtectionConstants._internal(this.value);

  static ProtectionConstants hIGH_ = ProtectionConstants._internal("HIGH");
  static ProtectionConstants mEDIUM_ = ProtectionConstants._internal("MEDIUM");
  static ProtectionConstants lOW_ = ProtectionConstants._internal("LOW");
  static ProtectionConstants oFF_ = ProtectionConstants._internal("OFF");
  static ProtectionConstants cUSTOM_ = ProtectionConstants._internal("CUSTOM");

  ProtectionConstants.fromJson(dynamic data) {
    switch (data) {
          case "HIGH": value = data; break;
          case "MEDIUM": value = data; break;
          case "LOW": value = data; break;
          case "OFF": value = data; break;
          case "CUSTOM": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ProtectionConstants data) {
    return data.value;
  }
}

