part of swagger.api;

class RenewStatusConstants {
  /// The underlying value of this enum member.
  String value;

  RenewStatusConstants._internal(this.value);

  static RenewStatusConstants aUTO_ = RenewStatusConstants._internal("AUTO");
  static RenewStatusConstants cANCELED_ = RenewStatusConstants._internal("CANCELED");
  static RenewStatusConstants oNCE_ = RenewStatusConstants._internal("ONCE");

  RenewStatusConstants.fromJson(dynamic data) {
    switch (data) {
          case "AUTO": value = data; break;
          case "CANCELED": value = data; break;
          case "ONCE": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(RenewStatusConstants data) {
    return data.value;
  }
}

