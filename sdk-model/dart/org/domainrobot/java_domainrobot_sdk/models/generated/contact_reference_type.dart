part of swagger.api;

class ContactReferenceType {
  /// The underlying value of this enum member.
  String value;

  ContactReferenceType._internal(this.value);

  static ContactReferenceType aLL_ = ContactReferenceType._internal("ALL");
  static ContactReferenceType oWNERC_ = ContactReferenceType._internal("OWNERC");
  static ContactReferenceType aDMINC_ = ContactReferenceType._internal("ADMINC");
  static ContactReferenceType tECHC_ = ContactReferenceType._internal("TECHC");
  static ContactReferenceType zONEC_ = ContactReferenceType._internal("ZONEC");
  static ContactReferenceType bILLINGC_ = ContactReferenceType._internal("BILLINGC");

  ContactReferenceType.fromJson(dynamic data) {
    switch (data) {
          case "ALL": value = data; break;
          case "OWNERC": value = data; break;
          case "ADMINC": value = data; break;
          case "TECHC": value = data; break;
          case "ZONEC": value = data; break;
          case "BILLINGC": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ContactReferenceType data) {
    return data.value;
  }
}

