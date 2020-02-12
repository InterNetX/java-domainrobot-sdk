part of swagger.api;

class TimeUnitConstants {
  /// The underlying value of this enum member.
  String value;

  TimeUnitConstants._internal(this.value);

  static TimeUnitConstants mILLISECOND_ = TimeUnitConstants._internal("MILLISECOND");
  static TimeUnitConstants sECOND_ = TimeUnitConstants._internal("SECOND");
  static TimeUnitConstants mINUTE_ = TimeUnitConstants._internal("MINUTE");
  static TimeUnitConstants hOUR_ = TimeUnitConstants._internal("HOUR");
  static TimeUnitConstants dAY_ = TimeUnitConstants._internal("DAY");
  static TimeUnitConstants wEEK_ = TimeUnitConstants._internal("WEEK");
  static TimeUnitConstants mONTH_ = TimeUnitConstants._internal("MONTH");
  static TimeUnitConstants qUARTER_ = TimeUnitConstants._internal("QUARTER");
  static TimeUnitConstants yEAR_ = TimeUnitConstants._internal("YEAR");

  TimeUnitConstants.fromJson(dynamic data) {
    switch (data) {
          case "MILLISECOND": value = data; break;
          case "SECOND": value = data; break;
          case "MINUTE": value = data; break;
          case "HOUR": value = data; break;
          case "DAY": value = data; break;
          case "WEEK": value = data; break;
          case "MONTH": value = data; break;
          case "QUARTER": value = data; break;
          case "YEAR": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(TimeUnitConstants data) {
    return data.value;
  }
}

