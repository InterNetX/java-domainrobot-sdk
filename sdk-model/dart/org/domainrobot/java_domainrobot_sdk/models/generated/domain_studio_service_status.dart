part of swagger.api;

class DomainStudioServiceStatus {
  /// The underlying value of this enum member.
  String value;

  DomainStudioServiceStatus._internal(this.value);

  static DomainStudioServiceStatus rUNNING_ = DomainStudioServiceStatus._internal("RUNNING");
  static DomainStudioServiceStatus sUCCESS_ = DomainStudioServiceStatus._internal("SUCCESS");
  static DomainStudioServiceStatus fAILED_ = DomainStudioServiceStatus._internal("FAILED");
  static DomainStudioServiceStatus tIMEOUT_ = DomainStudioServiceStatus._internal("TIMEOUT");

  DomainStudioServiceStatus.fromJson(dynamic data) {
    switch (data) {
          case "RUNNING": value = data; break;
          case "SUCCESS": value = data; break;
          case "FAILED": value = data; break;
          case "TIMEOUT": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(DomainStudioServiceStatus data) {
    return data.value;
  }
}

