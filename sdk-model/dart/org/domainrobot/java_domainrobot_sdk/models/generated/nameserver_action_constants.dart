part of swagger.api;

class NameserverActionConstants {
  /// The underlying value of this enum member.
  String value;

  NameserverActionConstants._internal(this.value);

  static NameserverActionConstants pRIMARY_ = NameserverActionConstants._internal("PRIMARY");
  static NameserverActionConstants sECONDARY_ = NameserverActionConstants._internal("SECONDARY");
  static NameserverActionConstants cOMPLETE_ = NameserverActionConstants._internal("COMPLETE");
  static NameserverActionConstants hIDDEN_ = NameserverActionConstants._internal("HIDDEN");
  static NameserverActionConstants nONE_ = NameserverActionConstants._internal("NONE");
  static NameserverActionConstants aUTO_ = NameserverActionConstants._internal("AUTO");

  NameserverActionConstants.fromJson(dynamic data) {
    switch (data) {
          case "PRIMARY": value = data; break;
          case "SECONDARY": value = data; break;
          case "COMPLETE": value = data; break;
          case "HIDDEN": value = data; break;
          case "NONE": value = data; break;
          case "AUTO": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(NameserverActionConstants data) {
    return data.value;
  }
}

