part of swagger.api;

class AuthMethodConstants {
  /// The underlying value of this enum member.
  String value;

  AuthMethodConstants._internal(this.value);

  static AuthMethodConstants dNS_ = AuthMethodConstants._internal("DNS");
  static AuthMethodConstants eMAIL_ = AuthMethodConstants._internal("EMAIL");
  static AuthMethodConstants fILE_ = AuthMethodConstants._internal("FILE");
  static AuthMethodConstants oRG_ = AuthMethodConstants._internal("ORG");

  AuthMethodConstants.fromJson(dynamic data) {
    switch (data) {
          case "DNS": value = data; break;
          case "EMAIL": value = data; break;
          case "FILE": value = data; break;
          case "ORG": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(AuthMethodConstants data) {
    return data.value;
  }
}

