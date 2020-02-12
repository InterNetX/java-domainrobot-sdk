part of swagger.api;

class Id4MeAgentStatus {
  /// The underlying value of this enum member.
  String value;

  Id4MeAgentStatus._internal(this.value);

  static Id4MeAgentStatus pENDING_ = Id4MeAgentStatus._internal("PENDING");
  static Id4MeAgentStatus pENDINGSSL_ = Id4MeAgentStatus._internal("PENDING_SSL");
  static Id4MeAgentStatus pENDINGSSLVERIFY_ = Id4MeAgentStatus._internal("PENDING_SSL_VERIFY");
  static Id4MeAgentStatus sUCCESS_ = Id4MeAgentStatus._internal("SUCCESS");
  static Id4MeAgentStatus fAILED_ = Id4MeAgentStatus._internal("FAILED");

  Id4MeAgentStatus.fromJson(dynamic data) {
    switch (data) {
          case "PENDING": value = data; break;
          case "PENDING_SSL": value = data; break;
          case "PENDING_SSL_VERIFY": value = data; break;
          case "SUCCESS": value = data; break;
          case "FAILED": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(Id4MeAgentStatus data) {
    return data.value;
  }
}

