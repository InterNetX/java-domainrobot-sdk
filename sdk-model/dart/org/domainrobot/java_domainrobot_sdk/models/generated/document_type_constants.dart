part of swagger.api;

class DocumentTypeConstants {
  /// The underlying value of this enum member.
  String value;

  DocumentTypeConstants._internal(this.value);

  static DocumentTypeConstants tMLICENSEEDECL_ = DocumentTypeConstants._internal("TM_LICENSEE_DECL");
  static DocumentTypeConstants tMASSIGNEEDECL_ = DocumentTypeConstants._internal("TM_ASSIGNEE_DECL");
  static DocumentTypeConstants tMOTHER_ = DocumentTypeConstants._internal("TM_OTHER");
  static DocumentTypeConstants dECLPROOFOFUSEONESAMPLE_ = DocumentTypeConstants._internal("DECL_PROOF_OF_USE_ONE_SAMPLE");
  static DocumentTypeConstants pROOFOFUSEOTHER_ = DocumentTypeConstants._internal("PROOF_OF_USE_OTHER");
  static DocumentTypeConstants cOPYOFCOURTORDER_ = DocumentTypeConstants._internal("COPY_OF_COURT_ORDER");
  static DocumentTypeConstants tMCHAGENTAUTHORISATIONFORM_ = DocumentTypeConstants._internal("TMCH_AGENT_AUTHORISATION_FORM");
  static DocumentTypeConstants tMOTHERCOPYOFTMCERTIFICATE_ = DocumentTypeConstants._internal("TM_OTHER_COPY_OF_TM_CERTIFICATE");
  static DocumentTypeConstants tMOTHERCOPYOFRENEWALREQUEST_ = DocumentTypeConstants._internal("TM_OTHER_COPY_OF_RENEWAL_REQUEST");
  static DocumentTypeConstants tMOTHERCOPYOFTREATYORSTATUTE_ = DocumentTypeConstants._internal("TM_OTHER_COPY_OF_TREATY_OR_STATUTE");
  static DocumentTypeConstants tMOTHERCOPYOFCERTIFICATE_ = DocumentTypeConstants._internal("TM_OTHER_COPY_OF_CERTIFICATE");

  DocumentTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "TM_LICENSEE_DECL": value = data; break;
          case "TM_ASSIGNEE_DECL": value = data; break;
          case "TM_OTHER": value = data; break;
          case "DECL_PROOF_OF_USE_ONE_SAMPLE": value = data; break;
          case "PROOF_OF_USE_OTHER": value = data; break;
          case "COPY_OF_COURT_ORDER": value = data; break;
          case "TMCH_AGENT_AUTHORISATION_FORM": value = data; break;
          case "TM_OTHER_COPY_OF_TM_CERTIFICATE": value = data; break;
          case "TM_OTHER_COPY_OF_RENEWAL_REQUEST": value = data; break;
          case "TM_OTHER_COPY_OF_TREATY_OR_STATUTE": value = data; break;
          case "TM_OTHER_COPY_OF_CERTIFICATE": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(DocumentTypeConstants data) {
    return data.value;
  }
}

