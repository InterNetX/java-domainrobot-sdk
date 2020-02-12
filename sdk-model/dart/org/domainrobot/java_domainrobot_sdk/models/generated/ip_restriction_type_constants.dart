part of swagger.api;

class IpRestrictionTypeConstants {
  /// The underlying value of this enum member.
  String value;

  IpRestrictionTypeConstants._internal(this.value);

  static IpRestrictionTypeConstants cLONE_ = IpRestrictionTypeConstants._internal("CLONE");
  static IpRestrictionTypeConstants uSER_ = IpRestrictionTypeConstants._internal("USER");
  static IpRestrictionTypeConstants cONTEXT_ = IpRestrictionTypeConstants._internal("CONTEXT");

  IpRestrictionTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "CLONE": value = data; break;
          case "USER": value = data; break;
          case "CONTEXT": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(IpRestrictionTypeConstants data) {
    return data.value;
  }
}

