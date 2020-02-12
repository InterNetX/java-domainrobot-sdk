part of swagger.api;

class GenericStatusConstants {
  /// The underlying value of this enum member.
  String value;

  GenericStatusConstants._internal(this.value);

  static GenericStatusConstants pENDING_ = GenericStatusConstants._internal("PENDING");
  static GenericStatusConstants sUCCESS_ = GenericStatusConstants._internal("SUCCESS");
  static GenericStatusConstants fAILED_ = GenericStatusConstants._internal("FAILED");
  static GenericStatusConstants nOTSET_ = GenericStatusConstants._internal("NOT_SET");

  GenericStatusConstants.fromJson(dynamic data) {
    switch (data) {
          case "PENDING": value = data; break;
          case "SUCCESS": value = data; break;
          case "FAILED": value = data; break;
          case "NOT_SET": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(GenericStatusConstants data) {
    return data.value;
  }
}

