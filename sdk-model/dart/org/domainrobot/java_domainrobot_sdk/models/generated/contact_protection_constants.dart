part of swagger.api;

class ContactProtectionConstants {
  /// The underlying value of this enum member.
  String value;

  ContactProtectionConstants._internal(this.value);

  static ContactProtectionConstants aLL_ = ContactProtectionConstants._internal("SHOW_ALL");
  static ContactProtectionConstants nONE_ = ContactProtectionConstants._internal("SHOW_NONE");

  ContactProtectionConstants.fromJson(dynamic data) {
    switch (data) {
          case "SHOW_ALL": value = data; break;
          case "SHOW_NONE": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ContactProtectionConstants data) {
    return data.value;
  }
}

