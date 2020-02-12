part of swagger.api;

class CertificateTransparencyPrivacyConstants {
  /// The underlying value of this enum member.
  String value;

  CertificateTransparencyPrivacyConstants._internal(this.value);

  static CertificateTransparencyPrivacyConstants pUBLIC_ = CertificateTransparencyPrivacyConstants._internal("PUBLIC");
  static CertificateTransparencyPrivacyConstants rEDACTED_ = CertificateTransparencyPrivacyConstants._internal("REDACTED");

  CertificateTransparencyPrivacyConstants.fromJson(dynamic data) {
    switch (data) {
          case "PUBLIC": value = data; break;
          case "REDACTED": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(CertificateTransparencyPrivacyConstants data) {
    return data.value;
  }
}

