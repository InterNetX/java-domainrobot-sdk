part of swagger.api;

class CreditCardVendor {
  /// The underlying value of this enum member.
  String value;

  CreditCardVendor._internal(this.value);

  static CreditCardVendor mC_ = CreditCardVendor._internal("MC");
  static CreditCardVendor vISA_ = CreditCardVendor._internal("VISA");
  static CreditCardVendor aMEX_ = CreditCardVendor._internal("AMEX");
  static CreditCardVendor dIC_ = CreditCardVendor._internal("DIC");
  static CreditCardVendor dISC_ = CreditCardVendor._internal("DISC");
  static CreditCardVendor cB_ = CreditCardVendor._internal("CB");

  CreditCardVendor.fromJson(dynamic data) {
    switch (data) {
          case "MC": value = data; break;
          case "VISA": value = data; break;
          case "AMEX": value = data; break;
          case "DIC": value = data; break;
          case "DISC": value = data; break;
          case "CB": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(CreditCardVendor data) {
    return data.value;
  }
}

