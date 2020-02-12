part of swagger.api;

class AutoRenewStatusConstants {
  /// The underlying value of this enum member.
  String value;

  AutoRenewStatusConstants._internal(this.value);

  static AutoRenewStatusConstants tRUE_ = AutoRenewStatusConstants._internal("TRUE");
  static AutoRenewStatusConstants fALSE_ = AutoRenewStatusConstants._internal("FALSE");
  static AutoRenewStatusConstants oNCE_ = AutoRenewStatusConstants._internal("ONCE");

  AutoRenewStatusConstants.fromJson(dynamic data) {
    switch (data) {
          case "TRUE": value = data; break;
          case "FALSE": value = data; break;
          case "ONCE": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(AutoRenewStatusConstants data) {
    return data.value;
  }
}

