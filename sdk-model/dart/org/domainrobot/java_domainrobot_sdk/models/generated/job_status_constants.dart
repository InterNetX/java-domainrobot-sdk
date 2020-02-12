part of swagger.api;

class JobStatusConstants {
  /// The underlying value of this enum member.
  String value;

  JobStatusConstants._internal(this.value);

  static JobStatusConstants rUNNING_ = JobStatusConstants._internal("RUNNING");
  static JobStatusConstants sUCCESS_ = JobStatusConstants._internal("SUCCESS");
  static JobStatusConstants fAILED_ = JobStatusConstants._internal("FAILED");
  static JobStatusConstants cANCELED_ = JobStatusConstants._internal("CANCELED");
  static JobStatusConstants sUPPORT_ = JobStatusConstants._internal("SUPPORT");
  static JobStatusConstants dEFERRED_ = JobStatusConstants._internal("DEFERRED");
  static JobStatusConstants nOTSET_ = JobStatusConstants._internal("NOT_SET");
  static JobStatusConstants wAIT_ = JobStatusConstants._internal("WAIT");

  JobStatusConstants.fromJson(dynamic data) {
    switch (data) {
          case "RUNNING": value = data; break;
          case "SUCCESS": value = data; break;
          case "FAILED": value = data; break;
          case "CANCELED": value = data; break;
          case "SUPPORT": value = data; break;
          case "DEFERRED": value = data; break;
          case "NOT_SET": value = data; break;
          case "WAIT": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(JobStatusConstants data) {
    return data.value;
  }
}

