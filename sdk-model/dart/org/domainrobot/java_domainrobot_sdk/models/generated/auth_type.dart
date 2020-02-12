part of swagger.api;

class AuthType {
  /// The underlying value of this enum member.
  String value;

  AuthType._internal(this.value);

  static AuthType pASSWORD_ = AuthType._internal("PASSWORD");
  static AuthType pASSWORDTOKEN_ = AuthType._internal("PASSWORD_TOKEN");
  static AuthType aLIAS_ = AuthType._internal("ALIAS");

  AuthType.fromJson(dynamic data) {
    switch (data) {
          case "PASSWORD": value = data; break;
          case "PASSWORD_TOKEN": value = data; break;
          case "ALIAS": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(AuthType data) {
    return data.value;
  }
}

