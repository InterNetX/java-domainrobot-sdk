part of swagger.api;

class CiraCprConstants {
  /// The underlying value of this enum member.
  String value;

  CiraCprConstants._internal(this.value);

  static CiraCprConstants cCT_ = CiraCprConstants._internal("CCT");
  static CiraCprConstants rES_ = CiraCprConstants._internal("RES");
  static CiraCprConstants cCO_ = CiraCprConstants._internal("CCO");
  static CiraCprConstants aBO_ = CiraCprConstants._internal("ABO");
  static CiraCprConstants tDM_ = CiraCprConstants._internal("TDM");
  static CiraCprConstants mAJ_ = CiraCprConstants._internal("MAJ");
  static CiraCprConstants gOV_ = CiraCprConstants._internal("GOV");
  static CiraCprConstants lGR_ = CiraCprConstants._internal("LGR");
  static CiraCprConstants tRS_ = CiraCprConstants._internal("TRS");
  static CiraCprConstants pRT_ = CiraCprConstants._internal("PRT");
  static CiraCprConstants aSS_ = CiraCprConstants._internal("ASS");
  static CiraCprConstants tRD_ = CiraCprConstants._internal("TRD");
  static CiraCprConstants pLT_ = CiraCprConstants._internal("PLT");
  static CiraCprConstants eDU_ = CiraCprConstants._internal("EDU");
  static CiraCprConstants lAM_ = CiraCprConstants._internal("LAM");
  static CiraCprConstants hOP_ = CiraCprConstants._internal("HOP");
  static CiraCprConstants iNB_ = CiraCprConstants._internal("INB");
  static CiraCprConstants oMK_ = CiraCprConstants._internal("OMK");

  CiraCprConstants.fromJson(dynamic data) {
    switch (data) {
          case "CCT": value = data; break;
          case "RES": value = data; break;
          case "CCO": value = data; break;
          case "ABO": value = data; break;
          case "TDM": value = data; break;
          case "MAJ": value = data; break;
          case "GOV": value = data; break;
          case "LGR": value = data; break;
          case "TRS": value = data; break;
          case "PRT": value = data; break;
          case "ASS": value = data; break;
          case "TRD": value = data; break;
          case "PLT": value = data; break;
          case "EDU": value = data; break;
          case "LAM": value = data; break;
          case "HOP": value = data; break;
          case "INB": value = data; break;
          case "OMK": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(CiraCprConstants data) {
    return data.value;
  }
}

