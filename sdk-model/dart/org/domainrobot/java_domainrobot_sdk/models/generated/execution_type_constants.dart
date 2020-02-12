part of swagger.api;

class ExecutionTypeConstants {
  /// The underlying value of this enum member.
  String value;

  ExecutionTypeConstants._internal(this.value);

  static ExecutionTypeConstants dATE_ = ExecutionTypeConstants._internal("DATE");
  static ExecutionTypeConstants eXPIRE_ = ExecutionTypeConstants._internal("EXPIRE");
  static ExecutionTypeConstants nOW_ = ExecutionTypeConstants._internal("NOW");

  ExecutionTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "DATE": value = data; break;
          case "EXPIRE": value = data; break;
          case "NOW": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ExecutionTypeConstants data) {
    return data.value;
  }
}

