part of swagger.api;

class StatusType {
  /// The underlying value of this enum member.
  String value;

  StatusType._internal(this.value);

  static StatusType sUCCESS_ = StatusType._internal("SUCCESS");
  static StatusType eRROR_ = StatusType._internal("ERROR");
  static StatusType nOTIFY_ = StatusType._internal("NOTIFY");
  static StatusType nOTICE_ = StatusType._internal("NOTICE");
  static StatusType nICCOMNOTIFY_ = StatusType._internal("NICCOM_NOTIFY");

  StatusType.fromJson(dynamic data) {
    switch (data) {
          case "SUCCESS": value = data; break;
          case "ERROR": value = data; break;
          case "NOTIFY": value = data; break;
          case "NOTICE": value = data; break;
          case "NICCOM_NOTIFY": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(StatusType data) {
    return data.value;
  }
}

