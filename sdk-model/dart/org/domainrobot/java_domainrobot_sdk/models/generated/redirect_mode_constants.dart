part of swagger.api;

class RedirectModeConstants {
  /// The underlying value of this enum member.
  String value;

  RedirectModeConstants._internal(this.value);

  static RedirectModeConstants cATCHALL_ = RedirectModeConstants._internal("CATCHALL");
  static RedirectModeConstants fRAME_ = RedirectModeConstants._internal("FRAME");
  static RedirectModeConstants hTTP_ = RedirectModeConstants._internal("HTTP");
  static RedirectModeConstants sINGLE_ = RedirectModeConstants._internal("SINGLE");
  static RedirectModeConstants hTTPS_ = RedirectModeConstants._internal("HTTPS");

  RedirectModeConstants.fromJson(dynamic data) {
    switch (data) {
          case "CATCHALL": value = data; break;
          case "FRAME": value = data; break;
          case "HTTP": value = data; break;
          case "SINGLE": value = data; break;
          case "HTTPS": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(RedirectModeConstants data) {
    return data.value;
  }
}

