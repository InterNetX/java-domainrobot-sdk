part of swagger.api;

class CryptoFormatConstants {
  /// The underlying value of this enum member.
  String value;

  CryptoFormatConstants._internal(this.value);

  static CryptoFormatConstants sHA1_ = CryptoFormatConstants._internal("SHA1");
  static CryptoFormatConstants sHA256_ = CryptoFormatConstants._internal("SHA256");
  static CryptoFormatConstants sHA512_ = CryptoFormatConstants._internal("SHA512");

  CryptoFormatConstants.fromJson(dynamic data) {
    switch (data) {
          case "SHA1": value = data; break;
          case "SHA256": value = data; break;
          case "SHA512": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(CryptoFormatConstants data) {
    return data.value;
  }
}

