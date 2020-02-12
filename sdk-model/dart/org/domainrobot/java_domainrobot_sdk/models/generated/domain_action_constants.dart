part of swagger.api;

class DomainActionConstants {
  /// The underlying value of this enum member.
  String value;

  DomainActionConstants._internal(this.value);

  static DomainActionConstants cREATE_ = DomainActionConstants._internal("CREATE");
  static DomainActionConstants uPDATE_ = DomainActionConstants._internal("UPDATE");
  static DomainActionConstants uPDATEOWNERCHANGE_ = DomainActionConstants._internal("UPDATE_OWNER_CHANGE");
  static DomainActionConstants uPDATEDNSSEC_ = DomainActionConstants._internal("UPDATE_DNSSEC");
  static DomainActionConstants uPDATENAMESERVER_ = DomainActionConstants._internal("UPDATE_NAMESERVER");
  static DomainActionConstants dELETE_ = DomainActionConstants._internal("DELETE");
  static DomainActionConstants tRANSIT_ = DomainActionConstants._internal("TRANSIT");
  static DomainActionConstants tRANSFER_ = DomainActionConstants._internal("TRANSFER");
  static DomainActionConstants tRANSFERINTERN_ = DomainActionConstants._internal("TRANSFER_INTERN");
  static DomainActionConstants tRANSFERINTERNREGISTRARCHANGE_ = DomainActionConstants._internal("TRANSFER_INTERN_REGISTRAR_CHANGE");
  static DomainActionConstants tRANSFERINTERNREGISTRARCHANGERUNTIMETAKEOVER_ = DomainActionConstants._internal("TRANSFER_INTERN_REGISTRAR_CHANGE_RUNTIME_TAKEOVER");
  static DomainActionConstants iMPORT_ = DomainActionConstants._internal("IMPORT");
  static DomainActionConstants mIGRATE_ = DomainActionConstants._internal("MIGRATE");
  static DomainActionConstants rESTORE_ = DomainActionConstants._internal("RESTORE");
  static DomainActionConstants rESTORENE_ = DomainActionConstants._internal("RESTORE_NE");
  static DomainActionConstants rESTORERENEW_ = DomainActionConstants._internal("RESTORE_RENEW");
  static DomainActionConstants rESTOREARGP_ = DomainActionConstants._internal("RESTORE_ARGP");
  static DomainActionConstants rENEW_ = DomainActionConstants._internal("RENEW");
  static DomainActionConstants aUTHINFO_ = DomainActionConstants._internal("AUTHINFO");
  static DomainActionConstants aUTHINFO2_ = DomainActionConstants._internal("AUTHINFO_2");
  static DomainActionConstants uPDATESTATUS_ = DomainActionConstants._internal("UPDATE_STATUS");
  static DomainActionConstants rEGISTRARUPDATESTATUS_ = DomainActionConstants._internal("REGISTRAR_UPDATE_STATUS");
  static DomainActionConstants uPDATECOMMENT_ = DomainActionConstants._internal("UPDATE_COMMENT");
  static DomainActionConstants aUTOUPDATEDNS_ = DomainActionConstants._internal("AUTOUPDATE_DNS");
  static DomainActionConstants oWNERCHANGE_ = DomainActionConstants._internal("OWNERCHANGE");
  static DomainActionConstants oWNERCHANGETRANSFER_ = DomainActionConstants._internal("OWNERCHANGE_TRANSFER");
  static DomainActionConstants oWNERCHANGETRANSFERINTERN_ = DomainActionConstants._internal("OWNERCHANGE_TRANSFER_INTERN");
  static DomainActionConstants oWNERCHANGETRANSFERINTERNREGISTRARCHANGE_ = DomainActionConstants._internal("OWNERCHANGE_TRANSFER_INTERN_REGISTRAR_CHANGE");
  static DomainActionConstants pREACK_ = DomainActionConstants._internal("PREACK");
  static DomainActionConstants wHOISREGISTRYSTATUS_ = DomainActionConstants._internal("WHOIS_REGISTRY_STATUS");
  static DomainActionConstants dOMAINAWAY_ = DomainActionConstants._internal("DOMAIN_AWAY");
  static DomainActionConstants tRANSFEROUTAUTOACK_ = DomainActionConstants._internal("TRANSFER_OUT_AUTOACK");
  static DomainActionConstants dROP_ = DomainActionConstants._internal("DROP");
  static DomainActionConstants aUTHINFOCREATE_ = DomainActionConstants._internal("AUTHINFO_CREATE");
  static DomainActionConstants aUTHINFODELETE_ = DomainActionConstants._internal("AUTHINFO_DELETE");
  static DomainActionConstants aUTOUPDATEDEFERRED_ = DomainActionConstants._internal("AUTOUPDATE_DEFERRED");
  static DomainActionConstants dOMAINBUY_ = DomainActionConstants._internal("DOMAIN_BUY");

  DomainActionConstants.fromJson(dynamic data) {
    switch (data) {
          case "CREATE": value = data; break;
          case "UPDATE": value = data; break;
          case "UPDATE_OWNER_CHANGE": value = data; break;
          case "UPDATE_DNSSEC": value = data; break;
          case "UPDATE_NAMESERVER": value = data; break;
          case "DELETE": value = data; break;
          case "TRANSIT": value = data; break;
          case "TRANSFER": value = data; break;
          case "TRANSFER_INTERN": value = data; break;
          case "TRANSFER_INTERN_REGISTRAR_CHANGE": value = data; break;
          case "TRANSFER_INTERN_REGISTRAR_CHANGE_RUNTIME_TAKEOVER": value = data; break;
          case "IMPORT": value = data; break;
          case "MIGRATE": value = data; break;
          case "RESTORE": value = data; break;
          case "RESTORE_NE": value = data; break;
          case "RESTORE_RENEW": value = data; break;
          case "RESTORE_ARGP": value = data; break;
          case "RENEW": value = data; break;
          case "AUTHINFO": value = data; break;
          case "AUTHINFO_2": value = data; break;
          case "UPDATE_STATUS": value = data; break;
          case "REGISTRAR_UPDATE_STATUS": value = data; break;
          case "UPDATE_COMMENT": value = data; break;
          case "AUTOUPDATE_DNS": value = data; break;
          case "OWNERCHANGE": value = data; break;
          case "OWNERCHANGE_TRANSFER": value = data; break;
          case "OWNERCHANGE_TRANSFER_INTERN": value = data; break;
          case "OWNERCHANGE_TRANSFER_INTERN_REGISTRAR_CHANGE": value = data; break;
          case "PREACK": value = data; break;
          case "WHOIS_REGISTRY_STATUS": value = data; break;
          case "DOMAIN_AWAY": value = data; break;
          case "TRANSFER_OUT_AUTOACK": value = data; break;
          case "DROP": value = data; break;
          case "AUTHINFO_CREATE": value = data; break;
          case "AUTHINFO_DELETE": value = data; break;
          case "AUTOUPDATE_DEFERRED": value = data; break;
          case "DOMAIN_BUY": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(DomainActionConstants data) {
    return data.value;
  }
}

