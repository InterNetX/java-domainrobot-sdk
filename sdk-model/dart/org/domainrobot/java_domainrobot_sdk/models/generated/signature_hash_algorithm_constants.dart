part of swagger.api;

class SignatureHashAlgorithmConstants {
  /// The underlying value of this enum member.
  String value;

  SignatureHashAlgorithmConstants._internal(this.value);

  static SignatureHashAlgorithmConstants sHA1_ = SignatureHashAlgorithmConstants._internal("SHA1");
  static SignatureHashAlgorithmConstants sHA2_ = SignatureHashAlgorithmConstants._internal("SHA2");
  static SignatureHashAlgorithmConstants sHA2FULLCHAIN_ = SignatureHashAlgorithmConstants._internal("SHA2_FULL_CHAIN");
  static SignatureHashAlgorithmConstants uNKNOWN_ = SignatureHashAlgorithmConstants._internal("UNKNOWN");
  static SignatureHashAlgorithmConstants sHA384_ = SignatureHashAlgorithmConstants._internal("SHA384");
  static SignatureHashAlgorithmConstants sHA512_ = SignatureHashAlgorithmConstants._internal("SHA512");
  static SignatureHashAlgorithmConstants sHA256_ = SignatureHashAlgorithmConstants._internal("SHA256");

  SignatureHashAlgorithmConstants.fromJson(dynamic data) {
    switch (data) {
          case "SHA1": value = data; break;
          case "SHA2": value = data; break;
          case "SHA2_FULL_CHAIN": value = data; break;
          case "UNKNOWN": value = data; break;
          case "SHA384": value = data; break;
          case "SHA512": value = data; break;
          case "SHA256": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(SignatureHashAlgorithmConstants data) {
    return data.value;
  }
}

