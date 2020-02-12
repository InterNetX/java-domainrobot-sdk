part of swagger.api;

class ServerSoftwareTypeConstants {
  /// The underlying value of this enum member.
  String value;

  ServerSoftwareTypeConstants._internal(this.value);

  static ServerSoftwareTypeConstants iIS4_ = ServerSoftwareTypeConstants._internal("IIS4");
  static ServerSoftwareTypeConstants iIS5_ = ServerSoftwareTypeConstants._internal("IIS5");
  static ServerSoftwareTypeConstants aPACHE2_ = ServerSoftwareTypeConstants._internal("APACHE2");
  static ServerSoftwareTypeConstants aPACHESSL_ = ServerSoftwareTypeConstants._internal("APACHESSL");
  static ServerSoftwareTypeConstants pLESK_ = ServerSoftwareTypeConstants._internal("PLESK");
  static ServerSoftwareTypeConstants tOMCAT_ = ServerSoftwareTypeConstants._internal("TOMCAT");
  static ServerSoftwareTypeConstants nOTSET_ = ServerSoftwareTypeConstants._internal("NOT_SET");

  ServerSoftwareTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "IIS4": value = data; break;
          case "IIS5": value = data; break;
          case "APACHE2": value = data; break;
          case "APACHESSL": value = data; break;
          case "PLESK": value = data; break;
          case "TOMCAT": value = data; break;
          case "NOT_SET": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ServerSoftwareTypeConstants data) {
    return data.value;
  }
}

