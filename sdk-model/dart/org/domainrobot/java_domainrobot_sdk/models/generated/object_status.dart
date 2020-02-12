part of swagger.api;

class ObjectStatus {
  /// The underlying value of this enum member.
  String value;

  ObjectStatus._internal(this.value);

  static ObjectStatus sPOOL_ = ObjectStatus._internal("SPOOL");
  static ObjectStatus rEQUEST_ = ObjectStatus._internal("REQUEST");
  static ObjectStatus pENDINGNOTIFY_ = ObjectStatus._internal("PENDING_NOTIFY");
  static ObjectStatus pENDING_ = ObjectStatus._internal("PENDING");
  static ObjectStatus fAILED_ = ObjectStatus._internal("FAILED");
  static ObjectStatus sUCCESS_ = ObjectStatus._internal("SUCCESS");
  static ObjectStatus pENDINGDOMAIN_ = ObjectStatus._internal("PENDING_DOMAIN");
  static ObjectStatus cONNECT_ = ObjectStatus._internal("CONNECT");

  ObjectStatus.fromJson(dynamic data) {
    switch (data) {
          case "SPOOL": value = data; break;
          case "REQUEST": value = data; break;
          case "PENDING_NOTIFY": value = data; break;
          case "PENDING": value = data; break;
          case "FAILED": value = data; break;
          case "SUCCESS": value = data; break;
          case "PENDING_DOMAIN": value = data; break;
          case "CONNECT": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ObjectStatus data) {
    return data.value;
  }
}

