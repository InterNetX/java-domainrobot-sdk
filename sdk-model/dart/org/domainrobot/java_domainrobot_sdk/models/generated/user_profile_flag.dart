part of swagger.api;

class UserProfileFlag {
  /// The underlying value of this enum member.
  String value;

  UserProfileFlag._internal(this.value);

  static UserProfileFlag oPTIONAL_ = UserProfileFlag._internal("OPTIONAL");
  static UserProfileFlag fIX_ = UserProfileFlag._internal("FIX");
  static UserProfileFlag rECURSE_ = UserProfileFlag._internal("RECURSE");
  static UserProfileFlag hIDDEN_ = UserProfileFlag._internal("HIDDEN");
  static UserProfileFlag pARENTFIX_ = UserProfileFlag._internal("PARENT_FIX");

  UserProfileFlag.fromJson(dynamic data) {
    switch (data) {
          case "OPTIONAL": value = data; break;
          case "FIX": value = data; break;
          case "RECURSE": value = data; break;
          case "HIDDEN": value = data; break;
          case "PARENT_FIX": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(UserProfileFlag data) {
    return data.value;
  }
}

