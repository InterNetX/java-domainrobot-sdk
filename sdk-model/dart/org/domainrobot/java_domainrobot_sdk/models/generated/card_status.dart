part of swagger.api;

class CardStatus {
  /// The underlying value of this enum member.
  String value;

  CardStatus._internal(this.value);

  static CardStatus lOST_ = CardStatus._internal("LOST");
  static CardStatus eXPIRED_ = CardStatus._internal("EXPIRED");
  static CardStatus aCTIVE_ = CardStatus._internal("ACTIVE");

  CardStatus.fromJson(dynamic data) {
    switch (data) {
          case "LOST": value = data; break;
          case "EXPIRED": value = data; break;
          case "ACTIVE": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(CardStatus data) {
    return data.value;
  }
}

