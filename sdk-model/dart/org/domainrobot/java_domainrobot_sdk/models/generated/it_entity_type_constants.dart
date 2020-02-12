part of swagger.api;

class ItEntityTypeConstants {
  /// The underlying value of this enum member.
  String value;

  ItEntityTypeConstants._internal(this.value);

  static ItEntityTypeConstants iTALIANANDFOREIGNNATURALPERSONS_ = ItEntityTypeConstants._internal("ITALIAN_AND_FOREIGN_NATURAL_PERSONS");
  static ItEntityTypeConstants iTALIANCOMPANIESONEMANCOMPANIES_ = ItEntityTypeConstants._internal("ITALIAN_COMPANIES_ONE_MAN_COMPANIES");
  static ItEntityTypeConstants iTALIANFREELANCEWORKERSPROFESSIONALS_ = ItEntityTypeConstants._internal("ITALIAN_FREELANCE_WORKERS_PROFESSIONALS");
  static ItEntityTypeConstants iTALIANNONPROFITORGANIZATIONS_ = ItEntityTypeConstants._internal("ITALIAN_NON_PROFIT_ORGANIZATIONS");
  static ItEntityTypeConstants iTALIANPUBLICORGANIZATIONS_ = ItEntityTypeConstants._internal("ITALIAN_PUBLIC_ORGANIZATIONS");
  static ItEntityTypeConstants iTALIANOTHERSUBJECTS_ = ItEntityTypeConstants._internal("ITALIAN_OTHER_SUBJECTS");
  static ItEntityTypeConstants fOREIGNNONNATURALPERSONS_ = ItEntityTypeConstants._internal("FOREIGN_NON_NATURAL_PERSONS");

  ItEntityTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "ITALIAN_AND_FOREIGN_NATURAL_PERSONS": value = data; break;
          case "ITALIAN_COMPANIES_ONE_MAN_COMPANIES": value = data; break;
          case "ITALIAN_FREELANCE_WORKERS_PROFESSIONALS": value = data; break;
          case "ITALIAN_NON_PROFIT_ORGANIZATIONS": value = data; break;
          case "ITALIAN_PUBLIC_ORGANIZATIONS": value = data; break;
          case "ITALIAN_OTHER_SUBJECTS": value = data; break;
          case "FOREIGN_NON_NATURAL_PERSONS": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ItEntityTypeConstants data) {
    return data.value;
  }
}

