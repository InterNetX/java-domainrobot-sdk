part of swagger.api;

class OrderType {
  /// The underlying value of this enum member.
  String value;

  OrderType._internal(this.value);

  static OrderType dESC_ = OrderType._internal("DESC");
  static OrderType aSC_ = OrderType._internal("ASC");

  OrderType.fromJson(dynamic data) {
    switch (data) {
          case "DESC": value = data; break;
          case "ASC": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(OrderType data) {
    return data.value;
  }
}

