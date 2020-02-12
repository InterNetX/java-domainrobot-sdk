part of swagger.api;

class PriceTypeConstants {
  /// The underlying value of this enum member.
  String value;

  PriceTypeConstants._internal(this.value);

  static PriceTypeConstants gROSS_ = PriceTypeConstants._internal("GROSS");
  static PriceTypeConstants nET_ = PriceTypeConstants._internal("NET");

  PriceTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "GROSS": value = data; break;
          case "NET": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(PriceTypeConstants data) {
    return data.value;
  }
}

