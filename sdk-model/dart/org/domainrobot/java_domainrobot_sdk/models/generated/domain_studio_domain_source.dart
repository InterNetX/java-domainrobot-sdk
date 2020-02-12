part of swagger.api;

class DomainStudioDomainSource {
  /// The underlying value of this enum member.
  String value;

  DomainStudioDomainSource._internal(this.value);

  static DomainStudioDomainSource iNITIAL_ = DomainStudioDomainSource._internal("INITIAL");
  static DomainStudioDomainSource sUGGESTION_ = DomainStudioDomainSource._internal("SUGGESTION");
  static DomainStudioDomainSource pREMIUM_ = DomainStudioDomainSource._internal("PREMIUM");
  static DomainStudioDomainSource gEO_ = DomainStudioDomainSource._internal("GEO");
  static DomainStudioDomainSource sIMILAR_ = DomainStudioDomainSource._internal("SIMILAR");
  static DomainStudioDomainSource rECOMMENDED_ = DomainStudioDomainSource._internal("RECOMMENDED");
  static DomainStudioDomainSource cUSTOM_ = DomainStudioDomainSource._internal("CUSTOM");

  DomainStudioDomainSource.fromJson(dynamic data) {
    switch (data) {
          case "INITIAL": value = data; break;
          case "SUGGESTION": value = data; break;
          case "PREMIUM": value = data; break;
          case "GEO": value = data; break;
          case "SIMILAR": value = data; break;
          case "RECOMMENDED": value = data; break;
          case "CUSTOM": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(DomainStudioDomainSource data) {
    return data.value;
  }
}

