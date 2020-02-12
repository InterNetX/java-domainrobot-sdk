part of swagger.api;

class TransferStatusConstants {
  /// The underlying value of this enum member.
  String value;

  TransferStatusConstants._internal(this.value);

  static TransferStatusConstants nOTSET_ = TransferStatusConstants._internal("NOT_SET");
  static TransferStatusConstants sTART_ = TransferStatusConstants._internal("START");
  static TransferStatusConstants fAILED_ = TransferStatusConstants._internal("FAILED");
  static TransferStatusConstants nACK_ = TransferStatusConstants._internal("NACK");
  static TransferStatusConstants aCK_ = TransferStatusConstants._internal("ACK");
  static TransferStatusConstants fOA1SENT_ = TransferStatusConstants._internal("FOA1_SENT");
  static TransferStatusConstants aUTOUPDATESUCCESS_ = TransferStatusConstants._internal("AUTOUPDATE_SUCCESS");
  static TransferStatusConstants aUTOUPDATEFAILED_ = TransferStatusConstants._internal("AUTOUPDATE_FAILED");

  TransferStatusConstants.fromJson(dynamic data) {
    switch (data) {
          case "NOT_SET": value = data; break;
          case "START": value = data; break;
          case "FAILED": value = data; break;
          case "NACK": value = data; break;
          case "ACK": value = data; break;
          case "FOA1_SENT": value = data; break;
          case "AUTOUPDATE_SUCCESS": value = data; break;
          case "AUTOUPDATE_FAILED": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(TransferStatusConstants data) {
    return data.value;
  }
}

