part of swagger.api;

class PriorityConstants {
  /// The underlying value of this enum member.
  String value;

  PriorityConstants._internal(this.value);

  static PriorityConstants dEFAULT_ = PriorityConstants._internal("DEFAULT");
  static PriorityConstants oFFER_ = PriorityConstants._internal("OFFER");
  static PriorityConstants pROTECTED_ = PriorityConstants._internal("PROTECTED");
  static PriorityConstants pROMO_ = PriorityConstants._internal("PROMO");

  PriorityConstants.fromJson(dynamic data) {
    switch (data) {
          case "DEFAULT": value = data; break;
          case "OFFER": value = data; break;
          case "PROTECTED": value = data; break;
          case "PROMO": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(PriorityConstants data) {
    return data.value;
  }
}

