part of swagger.api;

class PaymentConstants {
  /// The underlying value of this enum member.
  String value;

  PaymentConstants._internal(this.value);

  static PaymentConstants pRE_ = PaymentConstants._internal("PRE");
  static PaymentConstants pOST_ = PaymentConstants._internal("POST");
  static PaymentConstants lIVE_ = PaymentConstants._internal("LIVE");

  PaymentConstants.fromJson(dynamic data) {
    switch (data) {
          case "PRE": value = data; break;
          case "POST": value = data; break;
          case "LIVE": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(PaymentConstants data) {
    return data.value;
  }
}

