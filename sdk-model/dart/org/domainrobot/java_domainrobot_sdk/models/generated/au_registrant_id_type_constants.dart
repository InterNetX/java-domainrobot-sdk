part of swagger.api;

class AuRegistrantIdTypeConstants {
  /// The underlying value of this enum member.
  String value;

  AuRegistrantIdTypeConstants._internal(this.value);

  static AuRegistrantIdTypeConstants aCN_ = AuRegistrantIdTypeConstants._internal("ACN");
  static AuRegistrantIdTypeConstants aBN_ = AuRegistrantIdTypeConstants._internal("ABN");
  static AuRegistrantIdTypeConstants oTHER_ = AuRegistrantIdTypeConstants._internal("OTHER");

  AuRegistrantIdTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "ACN": value = data; break;
          case "ABN": value = data; break;
          case "OTHER": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(AuRegistrantIdTypeConstants data) {
    return data.value;
  }
}

