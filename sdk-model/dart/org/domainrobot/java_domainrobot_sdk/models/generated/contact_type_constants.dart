part of swagger.api;

class ContactTypeConstants {
  /// The underlying value of this enum member.
  String value;

  ContactTypeConstants._internal(this.value);

  static ContactTypeConstants pERSON_ = ContactTypeConstants._internal("PERSON");
  static ContactTypeConstants oRG_ = ContactTypeConstants._internal("ORG");
  static ContactTypeConstants rOLE_ = ContactTypeConstants._internal("ROLE");

  ContactTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "PERSON": value = data; break;
          case "ORG": value = data; break;
          case "ROLE": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ContactTypeConstants data) {
    return data.value;
  }
}

