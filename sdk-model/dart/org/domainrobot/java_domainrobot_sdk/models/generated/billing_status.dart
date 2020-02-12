part of swagger.api;

class BillingStatus {
  /// The underlying value of this enum member.
  String value;

  BillingStatus._internal(this.value);

  static BillingStatus aDD_ = BillingStatus._internal("ADD");
  static BillingStatus rEMOVE_ = BillingStatus._internal("REMOVE");
  static BillingStatus uPDATE_ = BillingStatus._internal("UPDATE");
  static BillingStatus iGNORE_ = BillingStatus._internal("IGNORE");
  static BillingStatus cUSTOMERCHANGED_ = BillingStatus._internal("CUSTOMER_CHANGED");
  static BillingStatus uSERCHANGED_ = BillingStatus._internal("USER_CHANGED");
  static BillingStatus aCTIVE_ = BillingStatus._internal("ACTIVE");
  static BillingStatus cANCELED_ = BillingStatus._internal("CANCELED");
  static BillingStatus cANCELEDEXPIRE_ = BillingStatus._internal("CANCELED_EXPIRE");
  static BillingStatus rESTORE_ = BillingStatus._internal("RESTORE");
  static BillingStatus aUTODELETE_ = BillingStatus._internal("AUTODELETE");
  static BillingStatus rEMOVED_ = BillingStatus._internal("REMOVED");

  BillingStatus.fromJson(dynamic data) {
    switch (data) {
          case "ADD": value = data; break;
          case "REMOVE": value = data; break;
          case "UPDATE": value = data; break;
          case "IGNORE": value = data; break;
          case "CUSTOMER_CHANGED": value = data; break;
          case "USER_CHANGED": value = data; break;
          case "ACTIVE": value = data; break;
          case "CANCELED": value = data; break;
          case "CANCELED_EXPIRE": value = data; break;
          case "RESTORE": value = data; break;
          case "AUTODELETE": value = data; break;
          case "REMOVED": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(BillingStatus data) {
    return data.value;
  }
}

