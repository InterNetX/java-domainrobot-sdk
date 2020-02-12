part of swagger.api;

class NiccomSourceConstants {
  /// The underlying value of this enum member.
  String value;

  NiccomSourceConstants._internal(this.value);

  static NiccomSourceConstants nICREQUEST_ = NiccomSourceConstants._internal("NIC_REQUEST");
  static NiccomSourceConstants nICRESPONSE_ = NiccomSourceConstants._internal("NIC_RESPONSE");
  static NiccomSourceConstants nICNOTIFY_ = NiccomSourceConstants._internal("NIC_NOTIFY");
  static NiccomSourceConstants a3REQUEST_ = NiccomSourceConstants._internal("A3_REQUEST");
  static NiccomSourceConstants a3RESPONSE_ = NiccomSourceConstants._internal("A3_RESPONSE");

  NiccomSourceConstants.fromJson(dynamic data) {
    switch (data) {
          case "NIC_REQUEST": value = data; break;
          case "NIC_RESPONSE": value = data; break;
          case "NIC_NOTIFY": value = data; break;
          case "A3_REQUEST": value = data; break;
          case "A3_RESPONSE": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(NiccomSourceConstants data) {
    return data.value;
  }
}

