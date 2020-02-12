part of swagger.api;

class DomainStudioDomainStatus {
  /// The underlying value of this enum member.
  String value;

  DomainStudioDomainStatus._internal(this.value);

  static DomainStudioDomainStatus fREE_ = DomainStudioDomainStatus._internal("FREE");
  static DomainStudioDomainStatus aSSIGNED_ = DomainStudioDomainStatus._internal("ASSIGNED");
  static DomainStudioDomainStatus mARKET_ = DomainStudioDomainStatus._internal("MARKET");
  static DomainStudioDomainStatus pREMIUM_ = DomainStudioDomainStatus._internal("PREMIUM");
  static DomainStudioDomainStatus iNVALID_ = DomainStudioDomainStatus._internal("INVALID");
  static DomainStudioDomainStatus eRROR_ = DomainStudioDomainStatus._internal("ERROR");
  static DomainStudioDomainStatus tIMEOUT_ = DomainStudioDomainStatus._internal("TIMEOUT");
  static DomainStudioDomainStatus rESERVED_ = DomainStudioDomainStatus._internal("RESERVED");
  static DomainStudioDomainStatus pREMIUMCLAIM_ = DomainStudioDomainStatus._internal("PREMIUM_CLAIM");
  static DomainStudioDomainStatus cLAIM_ = DomainStudioDomainStatus._internal("CLAIM");

  DomainStudioDomainStatus.fromJson(dynamic data) {
    switch (data) {
          case "FREE": value = data; break;
          case "ASSIGNED": value = data; break;
          case "MARKET": value = data; break;
          case "PREMIUM": value = data; break;
          case "INVALID": value = data; break;
          case "ERROR": value = data; break;
          case "TIMEOUT": value = data; break;
          case "RESERVED": value = data; break;
          case "PREMIUM_CLAIM": value = data; break;
          case "CLAIM": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(DomainStudioDomainStatus data) {
    return data.value;
  }
}

