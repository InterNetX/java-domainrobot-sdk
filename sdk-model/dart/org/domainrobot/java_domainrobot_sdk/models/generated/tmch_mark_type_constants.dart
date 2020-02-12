part of swagger.api;

class TmchMarkTypeConstants {
  /// The underlying value of this enum member.
  String value;

  TmchMarkTypeConstants._internal(this.value);

  static TmchMarkTypeConstants tRADEMARK_ = TmchMarkTypeConstants._internal("TRADEMARK");
  static TmchMarkTypeConstants tREATYORSTATUTE_ = TmchMarkTypeConstants._internal("TREATY_OR_STATUTE");
  static TmchMarkTypeConstants cOURT_ = TmchMarkTypeConstants._internal("COURT");
  static TmchMarkTypeConstants dNLABUSED_ = TmchMarkTypeConstants._internal("DNL_ABUSED");

  TmchMarkTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "TRADEMARK": value = data; break;
          case "TREATY_OR_STATUTE": value = data; break;
          case "COURT": value = data; break;
          case "DNL_ABUSED": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(TmchMarkTypeConstants data) {
    return data.value;
  }
}

