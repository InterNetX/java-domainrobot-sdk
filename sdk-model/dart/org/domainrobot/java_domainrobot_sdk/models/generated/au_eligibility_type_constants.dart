part of swagger.api;

class AuEligibilityTypeConstants {
  /// The underlying value of this enum member.
  String value;

  AuEligibilityTypeConstants._internal(this.value);

  static AuEligibilityTypeConstants cOMPANY_ = AuEligibilityTypeConstants._internal("COMPANY");
  static AuEligibilityTypeConstants rEGISTEREDBUSINESS_ = AuEligibilityTypeConstants._internal("REGISTERED_BUSINESS");
  static AuEligibilityTypeConstants sOLETRADER_ = AuEligibilityTypeConstants._internal("SOLE_TRADER");
  static AuEligibilityTypeConstants pARTNERSHIP_ = AuEligibilityTypeConstants._internal("PARTNERSHIP");
  static AuEligibilityTypeConstants tRADEMARKOWNER_ = AuEligibilityTypeConstants._internal("TRADEMARK_OWNER");
  static AuEligibilityTypeConstants pENDINGTMOWNER_ = AuEligibilityTypeConstants._internal("PENDING_TM_OWNER");
  static AuEligibilityTypeConstants cITIZENRESIDENT_ = AuEligibilityTypeConstants._internal("CITIZEN_RESIDENT");
  static AuEligibilityTypeConstants iNCORPORATEDASSOCIATION_ = AuEligibilityTypeConstants._internal("INCORPORATED_ASSOCIATION");
  static AuEligibilityTypeConstants uNINCORPORATEDASSOCIATION_ = AuEligibilityTypeConstants._internal("UNINCORPORATED_ASSOCIATION");
  static AuEligibilityTypeConstants cLUB_ = AuEligibilityTypeConstants._internal("CLUB");
  static AuEligibilityTypeConstants nONPROFITORGANISATION_ = AuEligibilityTypeConstants._internal("NON_PROFIT_ORGANISATION");
  static AuEligibilityTypeConstants cHARITY_ = AuEligibilityTypeConstants._internal("CHARITY");
  static AuEligibilityTypeConstants tRADEUNION_ = AuEligibilityTypeConstants._internal("TRADE_UNION");
  static AuEligibilityTypeConstants iNDUSTRYBODY_ = AuEligibilityTypeConstants._internal("INDUSTRY_BODY");
  static AuEligibilityTypeConstants cOMMERCIALSTATUTORYBODY_ = AuEligibilityTypeConstants._internal("COMMERCIAL_STATUTORY_BODY");
  static AuEligibilityTypeConstants pOLITICALPARTY_ = AuEligibilityTypeConstants._internal("POLITICAL_PARTY");
  static AuEligibilityTypeConstants rELIGIOUSCHURCHGROUPS_ = AuEligibilityTypeConstants._internal("RELIGIOUS_CHURCH_GROUPS");
  static AuEligibilityTypeConstants oTHER_ = AuEligibilityTypeConstants._internal("OTHER");

  AuEligibilityTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "COMPANY": value = data; break;
          case "REGISTERED_BUSINESS": value = data; break;
          case "SOLE_TRADER": value = data; break;
          case "PARTNERSHIP": value = data; break;
          case "TRADEMARK_OWNER": value = data; break;
          case "PENDING_TM_OWNER": value = data; break;
          case "CITIZEN_RESIDENT": value = data; break;
          case "INCORPORATED_ASSOCIATION": value = data; break;
          case "UNINCORPORATED_ASSOCIATION": value = data; break;
          case "CLUB": value = data; break;
          case "NON_PROFIT_ORGANISATION": value = data; break;
          case "CHARITY": value = data; break;
          case "TRADE_UNION": value = data; break;
          case "INDUSTRY_BODY": value = data; break;
          case "COMMERCIAL_STATUTORY_BODY": value = data; break;
          case "POLITICAL_PARTY": value = data; break;
          case "RELIGIOUS_CHURCH_GROUPS": value = data; break;
          case "OTHER": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(AuEligibilityTypeConstants data) {
    return data.value;
  }
}

