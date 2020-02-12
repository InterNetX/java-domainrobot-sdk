part of swagger.api;

class RegistryStatusConstants {
  /// The underlying value of this enum member.
  String value;

  RegistryStatusConstants._internal(this.value);

  static RegistryStatusConstants aCTIVE_ = RegistryStatusConstants._internal("ACTIVE");
  static RegistryStatusConstants hOLD_ = RegistryStatusConstants._internal("HOLD");
  static RegistryStatusConstants lOCK_ = RegistryStatusConstants._internal("LOCK");
  static RegistryStatusConstants hOLDLOCK_ = RegistryStatusConstants._internal("HOLD_LOCK");
  static RegistryStatusConstants aUTO_ = RegistryStatusConstants._internal("AUTO");
  static RegistryStatusConstants lOCKOWNER_ = RegistryStatusConstants._internal("LOCK_OWNER");
  static RegistryStatusConstants lOCKUPDATE_ = RegistryStatusConstants._internal("LOCK_UPDATE");
  static RegistryStatusConstants pENDING_ = RegistryStatusConstants._internal("PENDING");
  static RegistryStatusConstants nONE_ = RegistryStatusConstants._internal("NONE");

  RegistryStatusConstants.fromJson(dynamic data) {
    switch (data) {
          case "ACTIVE": value = data; break;
          case "HOLD": value = data; break;
          case "LOCK": value = data; break;
          case "HOLD_LOCK": value = data; break;
          case "AUTO": value = data; break;
          case "LOCK_OWNER": value = data; break;
          case "LOCK_UPDATE": value = data; break;
          case "PENDING": value = data; break;
          case "NONE": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(RegistryStatusConstants data) {
    return data.value;
  }
}

