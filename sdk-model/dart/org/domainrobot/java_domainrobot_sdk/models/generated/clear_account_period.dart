part of swagger.api;

class ClearAccountPeriod {
  /// The underlying value of this enum member.
  String value;

  ClearAccountPeriod._internal(this.value);

  static ClearAccountPeriod dAY_ = ClearAccountPeriod._internal("DAY");
  static ClearAccountPeriod mONTH_ = ClearAccountPeriod._internal("MONTH");
  static ClearAccountPeriod bILL_ = ClearAccountPeriod._internal("BILL");
  static ClearAccountPeriod wEEK_ = ClearAccountPeriod._internal("WEEK");
  static ClearAccountPeriod nONE_ = ClearAccountPeriod._internal("NONE");

  ClearAccountPeriod.fromJson(dynamic data) {
    switch (data) {
          case "DAY": value = data; break;
          case "MONTH": value = data; break;
          case "BILL": value = data; break;
          case "WEEK": value = data; break;
          case "NONE": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ClearAccountPeriod data) {
    return data.value;
  }
}

