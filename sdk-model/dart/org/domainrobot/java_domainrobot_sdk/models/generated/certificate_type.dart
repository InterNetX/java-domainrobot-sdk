part of swagger.api;

class CertificateType {
  /// The underlying value of this enum member.
  String value;

  CertificateType._internal(this.value);

  static CertificateType fQDN_ = CertificateType._internal("FQDN");
  static CertificateType mAIL_ = CertificateType._internal("MAIL");
  static CertificateType cODE_ = CertificateType._internal("CODE");

  CertificateType.fromJson(dynamic data) {
    switch (data) {
          case "FQDN": value = data; break;
          case "MAIL": value = data; break;
          case "CODE": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(CertificateType data) {
    return data.value;
  }
}

