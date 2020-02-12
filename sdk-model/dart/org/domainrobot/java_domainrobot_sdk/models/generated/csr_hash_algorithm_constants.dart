part of swagger.api;

class CsrHashAlgorithmConstants {
  /// The underlying value of this enum member.
  String value;

  CsrHashAlgorithmConstants._internal(this.value);

  static CsrHashAlgorithmConstants eCC_ = CsrHashAlgorithmConstants._internal("ECC");
  static CsrHashAlgorithmConstants rSA_ = CsrHashAlgorithmConstants._internal("RSA");
  static CsrHashAlgorithmConstants dSA_ = CsrHashAlgorithmConstants._internal("DSA");

  CsrHashAlgorithmConstants.fromJson(dynamic data) {
    switch (data) {
          case "ECC": value = data; break;
          case "RSA": value = data; break;
          case "DSA": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(CsrHashAlgorithmConstants data) {
    return data.value;
  }
}

