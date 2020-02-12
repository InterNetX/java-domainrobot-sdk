part of swagger.api;

class TmchMarkStatusConstants {
  /// The underlying value of this enum member.
  String value;

  TmchMarkStatusConstants._internal(this.value);

  static TmchMarkStatusConstants oPEN_ = TmchMarkStatusConstants._internal("OPEN");
  static TmchMarkStatusConstants pAYMENT_ = TmchMarkStatusConstants._internal("PAYMENT");
  static TmchMarkStatusConstants pENDING_ = TmchMarkStatusConstants._internal("PENDING");
  static TmchMarkStatusConstants iNCORRECT_ = TmchMarkStatusConstants._internal("INCORRECT");
  static TmchMarkStatusConstants vERIFIED_ = TmchMarkStatusConstants._internal("VERIFIED");
  static TmchMarkStatusConstants sENT_ = TmchMarkStatusConstants._internal("SENT");
  static TmchMarkStatusConstants aCTIVE_ = TmchMarkStatusConstants._internal("ACTIVE");
  static TmchMarkStatusConstants dEACTIVATED_ = TmchMarkStatusConstants._internal("DEACTIVATED");
  static TmchMarkStatusConstants cANCELED_ = TmchMarkStatusConstants._internal("CANCELED");
  static TmchMarkStatusConstants rENEW_ = TmchMarkStatusConstants._internal("RENEW");
  static TmchMarkStatusConstants fAILED_ = TmchMarkStatusConstants._internal("FAILED");
  static TmchMarkStatusConstants eXTERNAL_ = TmchMarkStatusConstants._internal("EXTERNAL");
  static TmchMarkStatusConstants pENDINGTRANSFER_ = TmchMarkStatusConstants._internal("PENDING_TRANSFER");
  static TmchMarkStatusConstants pENDINGRENEW_ = TmchMarkStatusConstants._internal("PENDING_RENEW");
  static TmchMarkStatusConstants pENDINGDELETE_ = TmchMarkStatusConstants._internal("PENDING_DELETE");
  static TmchMarkStatusConstants pENDINGPAYMENT_ = TmchMarkStatusConstants._internal("PENDING_PAYMENT");
  static TmchMarkStatusConstants pENDINGTRANSFERPAYMENT_ = TmchMarkStatusConstants._internal("PENDING_TRANSFER_PAYMENT");
  static TmchMarkStatusConstants pENDINGRENEWPAYMENT_ = TmchMarkStatusConstants._internal("PENDING_RENEW_PAYMENT");

  TmchMarkStatusConstants.fromJson(dynamic data) {
    switch (data) {
          case "OPEN": value = data; break;
          case "PAYMENT": value = data; break;
          case "PENDING": value = data; break;
          case "INCORRECT": value = data; break;
          case "VERIFIED": value = data; break;
          case "SENT": value = data; break;
          case "ACTIVE": value = data; break;
          case "DEACTIVATED": value = data; break;
          case "CANCELED": value = data; break;
          case "RENEW": value = data; break;
          case "FAILED": value = data; break;
          case "EXTERNAL": value = data; break;
          case "PENDING_TRANSFER": value = data; break;
          case "PENDING_RENEW": value = data; break;
          case "PENDING_DELETE": value = data; break;
          case "PENDING_PAYMENT": value = data; break;
          case "PENDING_TRANSFER_PAYMENT": value = data; break;
          case "PENDING_RENEW_PAYMENT": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(TmchMarkStatusConstants data) {
    return data.value;
  }
}

