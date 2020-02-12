part of swagger.api;

class RoPersonTypeConstants {
  /// The underlying value of this enum member.
  String value;

  RoPersonTypeConstants._internal(this.value);

  static RoPersonTypeConstants p_ = RoPersonTypeConstants._internal("P");
  static RoPersonTypeConstants aP_ = RoPersonTypeConstants._internal("AP");
  static RoPersonTypeConstants nC_ = RoPersonTypeConstants._internal("NC");
  static RoPersonTypeConstants c_ = RoPersonTypeConstants._internal("C");
  static RoPersonTypeConstants gI_ = RoPersonTypeConstants._internal("GI");
  static RoPersonTypeConstants pI_ = RoPersonTypeConstants._internal("PI");
  static RoPersonTypeConstants o_ = RoPersonTypeConstants._internal("O");

  RoPersonTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "P": value = data; break;
          case "AP": value = data; break;
          case "NC": value = data; break;
          case "C": value = data; break;
          case "GI": value = data; break;
          case "PI": value = data; break;
          case "O": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(RoPersonTypeConstants data) {
    return data.value;
  }
}

