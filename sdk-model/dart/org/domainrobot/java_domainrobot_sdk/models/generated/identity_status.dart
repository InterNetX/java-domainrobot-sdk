part of swagger.api;

class IdentityStatus {
  /// The underlying value of this enum member.
  String value;

  IdentityStatus._internal(this.value);

  static IdentityStatus vERIFY_ = IdentityStatus._internal("VERIFY");
  static IdentityStatus sUCCESS_ = IdentityStatus._internal("SUCCESS");

  IdentityStatus.fromJson(dynamic data) {
    switch (data) {
          case "VERIFY": value = data; break;
          case "SUCCESS": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(IdentityStatus data) {
    return data.value;
  }
}

