part of swagger.api;

class ModifierConstants {
  /// The underlying value of this enum member.
  String value;

  ModifierConstants._internal(this.value);

  static ModifierConstants tTL_ = ModifierConstants._internal("TTL");
  static ModifierConstants mX_ = ModifierConstants._internal("MX");
  static ModifierConstants a_ = ModifierConstants._internal("A");
  static ModifierConstants aAAA_ = ModifierConstants._internal("AAAA");
  static ModifierConstants sOAEMAIL_ = ModifierConstants._internal("SOA_EMAIL");
  static ModifierConstants nSERVER_ = ModifierConstants._internal("NSERVER");
  static ModifierConstants cNAME_ = ModifierConstants._internal("CNAME");
  static ModifierConstants tXT_ = ModifierConstants._internal("TXT");
  static ModifierConstants aLL_ = ModifierConstants._internal("ALL");
  static ModifierConstants mAINIP_ = ModifierConstants._internal("MAIN_IP");
  static ModifierConstants oWNERC_ = ModifierConstants._internal("OWNERC");
  static ModifierConstants aDMINC_ = ModifierConstants._internal("ADMINC");
  static ModifierConstants tECHC_ = ModifierConstants._internal("TECHC");
  static ModifierConstants zONEC_ = ModifierConstants._internal("ZONEC");
  static ModifierConstants bILLINGC_ = ModifierConstants._internal("BILLINGC");
  static ModifierConstants aLIAS_ = ModifierConstants._internal("ALIAS");

  ModifierConstants.fromJson(dynamic data) {
    switch (data) {
          case "TTL": value = data; break;
          case "MX": value = data; break;
          case "A": value = data; break;
          case "AAAA": value = data; break;
          case "SOA_EMAIL": value = data; break;
          case "NSERVER": value = data; break;
          case "CNAME": value = data; break;
          case "TXT": value = data; break;
          case "ALL": value = data; break;
          case "MAIN_IP": value = data; break;
          case "OWNERC": value = data; break;
          case "ADMINC": value = data; break;
          case "TECHC": value = data; break;
          case "ZONEC": value = data; break;
          case "BILLINGC": value = data; break;
          case "ALIAS": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ModifierConstants data) {
    return data.value;
  }
}

