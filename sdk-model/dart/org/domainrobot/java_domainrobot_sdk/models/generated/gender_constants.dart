part of swagger.api;

class GenderConstants {
  /// The underlying value of this enum member.
  String value;

  GenderConstants._internal(this.value);

  static GenderConstants mALE_ = GenderConstants._internal("MALE");
  static GenderConstants fEMALE_ = GenderConstants._internal("FEMALE");

  GenderConstants.fromJson(dynamic data) {
    switch (data) {
          case "MALE": value = data; break;
          case "FEMALE": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(GenderConstants data) {
    return data.value;
  }
}

