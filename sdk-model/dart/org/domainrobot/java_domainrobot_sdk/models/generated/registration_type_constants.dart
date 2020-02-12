part of swagger.api;

class RegistrationTypeConstants {
  /// The underlying value of this enum member.
  String value;

  RegistrationTypeConstants._internal(this.value);

  static RegistrationTypeConstants fCFS_ = RegistrationTypeConstants._internal("FCFS");
  static RegistrationTypeConstants aPPLICATION_ = RegistrationTypeConstants._internal("APPLICATION");
  static RegistrationTypeConstants oTHER_ = RegistrationTypeConstants._internal("OTHER");

  RegistrationTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "FCFS": value = data; break;
          case "APPLICATION": value = data; break;
          case "OTHER": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(RegistrationTypeConstants data) {
    return data.value;
  }
}

