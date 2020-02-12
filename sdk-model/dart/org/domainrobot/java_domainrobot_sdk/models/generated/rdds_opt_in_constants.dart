part of swagger.api;

class RddsOptInConstants {
  /// The underlying value of this enum member.
  String value;

  RddsOptInConstants._internal(this.value);

  static RddsOptInConstants nOTSET_ = RddsOptInConstants._internal("NOT_SET");
  static RddsOptInConstants oWNERC_ = RddsOptInConstants._internal("OWNERC");
  static RddsOptInConstants aDMINC_ = RddsOptInConstants._internal("ADMINC");
  static RddsOptInConstants oWNERCADMINC_ = RddsOptInConstants._internal("OWNERC_ADMINC");
  static RddsOptInConstants tECHC_ = RddsOptInConstants._internal("TECHC");
  static RddsOptInConstants oWNERCTECHC_ = RddsOptInConstants._internal("OWNERC_TECHC");
  static RddsOptInConstants aDMINCTECHC_ = RddsOptInConstants._internal("ADMINC_TECHC");
  static RddsOptInConstants aLL_ = RddsOptInConstants._internal("ALL");

  RddsOptInConstants.fromJson(dynamic data) {
    switch (data) {
          case "NOT_SET": value = data; break;
          case "OWNERC": value = data; break;
          case "ADMINC": value = data; break;
          case "OWNERC_ADMINC": value = data; break;
          case "TECHC": value = data; break;
          case "OWNERC_TECHC": value = data; break;
          case "ADMINC_TECHC": value = data; break;
          case "ALL": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(RddsOptInConstants data) {
    return data.value;
  }
}

