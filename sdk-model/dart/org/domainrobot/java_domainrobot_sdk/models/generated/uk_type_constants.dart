part of swagger.api;

class UkTypeConstants {
  /// The underlying value of this enum member.
  String value;

  UkTypeConstants._internal(this.value);

  static UkTypeConstants lTD_ = UkTypeConstants._internal("LTD");
  static UkTypeConstants pLC_ = UkTypeConstants._internal("PLC");
  static UkTypeConstants pTNR_ = UkTypeConstants._internal("PTNR");
  static UkTypeConstants sTRA_ = UkTypeConstants._internal("STRA");
  static UkTypeConstants lLP_ = UkTypeConstants._internal("LLP");
  static UkTypeConstants iP_ = UkTypeConstants._internal("IP");
  static UkTypeConstants iND_ = UkTypeConstants._internal("IND");
  static UkTypeConstants sCH_ = UkTypeConstants._internal("SCH");
  static UkTypeConstants rCHAR_ = UkTypeConstants._internal("RCHAR");
  static UkTypeConstants gOV_ = UkTypeConstants._internal("GOV");
  static UkTypeConstants cRC_ = UkTypeConstants._internal("CRC");
  static UkTypeConstants sTAT_ = UkTypeConstants._internal("STAT");
  static UkTypeConstants oTHER_ = UkTypeConstants._internal("OTHER");
  static UkTypeConstants fIND_ = UkTypeConstants._internal("FIND");
  static UkTypeConstants fCORP_ = UkTypeConstants._internal("FCORP");
  static UkTypeConstants fOTHER_ = UkTypeConstants._internal("FOTHER");

  UkTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "LTD": value = data; break;
          case "PLC": value = data; break;
          case "PTNR": value = data; break;
          case "STRA": value = data; break;
          case "LLP": value = data; break;
          case "IP": value = data; break;
          case "IND": value = data; break;
          case "SCH": value = data; break;
          case "RCHAR": value = data; break;
          case "GOV": value = data; break;
          case "CRC": value = data; break;
          case "STAT": value = data; break;
          case "OTHER": value = data; break;
          case "FIND": value = data; break;
          case "FCORP": value = data; break;
          case "FOTHER": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(UkTypeConstants data) {
    return data.value;
  }
}

