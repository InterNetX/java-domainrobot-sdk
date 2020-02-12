part of swagger.api;

class TransferAnswer {
  /// The underlying value of this enum member.
  String value;

  TransferAnswer._internal(this.value);

  static TransferAnswer aCK_ = TransferAnswer._internal("TRANSFER_OUT_ACK");
  static TransferAnswer nACK_ = TransferAnswer._internal("TRANSFER_OUT_NACK");

  TransferAnswer.fromJson(dynamic data) {
    switch (data) {
          case "TRANSFER_OUT_ACK": value = data; break;
          case "TRANSFER_OUT_NACK": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(TransferAnswer data) {
    return data.value;
  }
}

