part of swagger.api;

class ProtocolTypeConstants {
  /// The underlying value of this enum member.
  String value;

  ProtocolTypeConstants._internal(this.value);

  static ProtocolTypeConstants tOTP_ = ProtocolTypeConstants._internal("TOTP");
  static ProtocolTypeConstants hOTP_ = ProtocolTypeConstants._internal("HOTP");

  ProtocolTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "TOTP": value = data; break;
          case "HOTP": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ProtocolTypeConstants data) {
    return data.value;
  }
}

