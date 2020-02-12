part of swagger.api;

class UserLock {
  /// The underlying value of this enum member.
  String value;

  UserLock._internal(this.value);

  static UserLock nONE_ = UserLock._internal("NONE");
  static UserLock cUSTOMER_ = UserLock._internal("CUSTOMER");
  static UserLock eXPIRED_ = UserLock._internal("EXPIRED");
  static UserLock uSER_ = UserLock._internal("USER");

  UserLock.fromJson(dynamic data) {
    switch (data) {
          case "NONE": value = data; break;
          case "CUSTOMER": value = data; break;
          case "EXPIRED": value = data; break;
          case "USER": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(UserLock data) {
    return data.value;
  }
}

