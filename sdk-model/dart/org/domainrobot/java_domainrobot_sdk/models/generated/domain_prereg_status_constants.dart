part of swagger.api;

class DomainPreregStatusConstants {
  /// The underlying value of this enum member.
  String value;

  DomainPreregStatusConstants._internal(this.value);

  static DomainPreregStatusConstants pENDING_ = DomainPreregStatusConstants._internal("PENDING");
  static DomainPreregStatusConstants pENDINGSENT_ = DomainPreregStatusConstants._internal("PENDING_SENT");
  static DomainPreregStatusConstants pENDINGDOCUMENTSENT_ = DomainPreregStatusConstants._internal("PENDING_DOCUMENT_SENT");
  static DomainPreregStatusConstants pENDINGPROGRESS_ = DomainPreregStatusConstants._internal("PENDING_PROGRESS");
  static DomainPreregStatusConstants pENDINGUPDATE_ = DomainPreregStatusConstants._internal("PENDING_UPDATE");
  static DomainPreregStatusConstants pENDINGSENTUPDATE_ = DomainPreregStatusConstants._internal("PENDING_SENT_UPDATE");
  static DomainPreregStatusConstants tIMEOUT_ = DomainPreregStatusConstants._internal("TIMEOUT");
  static DomainPreregStatusConstants aCCEPT_ = DomainPreregStatusConstants._internal("ACCEPT");
  static DomainPreregStatusConstants dECLINE_ = DomainPreregStatusConstants._internal("DECLINE");
  static DomainPreregStatusConstants iNVALIDNAME_ = DomainPreregStatusConstants._internal("INVALID_NAME");
  static DomainPreregStatusConstants fAILED_ = DomainPreregStatusConstants._internal("FAILED");
  static DomainPreregStatusConstants cANCEL_ = DomainPreregStatusConstants._internal("CANCEL");
  static DomainPreregStatusConstants aUTOCANCEL_ = DomainPreregStatusConstants._internal("AUTO_CANCEL");
  static DomainPreregStatusConstants aCTIVE_ = DomainPreregStatusConstants._internal("ACTIVE");
  static DomainPreregStatusConstants sENT_ = DomainPreregStatusConstants._internal("SENT");
  static DomainPreregStatusConstants oPEN_ = DomainPreregStatusConstants._internal("OPEN");
  static DomainPreregStatusConstants tMCHCLAIM_ = DomainPreregStatusConstants._internal("TMCH_CLAIM");
  static DomainPreregStatusConstants tMCHCLAIMCONFIRMED_ = DomainPreregStatusConstants._internal("TMCH_CLAIM_CONFIRMED");
  static DomainPreregStatusConstants tMCHCLAIMREJECTED_ = DomainPreregStatusConstants._internal("TMCH_CLAIM_REJECTED");
  static DomainPreregStatusConstants tMCHCLAIMEXPIRED_ = DomainPreregStatusConstants._internal("TMCH_CLAIM_EXPIRED");
  static DomainPreregStatusConstants tMCHCLAIMPENDING_ = DomainPreregStatusConstants._internal("TMCH_CLAIM_PENDING");
  static DomainPreregStatusConstants tMCHCLAIMFAILED_ = DomainPreregStatusConstants._internal("TMCH_CLAIM_FAILED");
  static DomainPreregStatusConstants fAILEDREF_ = DomainPreregStatusConstants._internal("FAILED_REF");

  DomainPreregStatusConstants.fromJson(dynamic data) {
    switch (data) {
          case "PENDING": value = data; break;
          case "PENDING_SENT": value = data; break;
          case "PENDING_DOCUMENT_SENT": value = data; break;
          case "PENDING_PROGRESS": value = data; break;
          case "PENDING_UPDATE": value = data; break;
          case "PENDING_SENT_UPDATE": value = data; break;
          case "TIMEOUT": value = data; break;
          case "ACCEPT": value = data; break;
          case "DECLINE": value = data; break;
          case "INVALID_NAME": value = data; break;
          case "FAILED": value = data; break;
          case "CANCEL": value = data; break;
          case "AUTO_CANCEL": value = data; break;
          case "ACTIVE": value = data; break;
          case "SENT": value = data; break;
          case "OPEN": value = data; break;
          case "TMCH_CLAIM": value = data; break;
          case "TMCH_CLAIM_CONFIRMED": value = data; break;
          case "TMCH_CLAIM_REJECTED": value = data; break;
          case "TMCH_CLAIM_EXPIRED": value = data; break;
          case "TMCH_CLAIM_PENDING": value = data; break;
          case "TMCH_CLAIM_FAILED": value = data; break;
          case "FAILED_REF": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(DomainPreregStatusConstants data) {
    return data.value;
  }
}

