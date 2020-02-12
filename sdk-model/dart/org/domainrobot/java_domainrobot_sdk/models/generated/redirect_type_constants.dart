part of swagger.api;

class RedirectTypeConstants {
  /// The underlying value of this enum member.
  String value;

  RedirectTypeConstants._internal(this.value);

  static RedirectTypeConstants dOMAIN_ = RedirectTypeConstants._internal("DOMAIN");
  static RedirectTypeConstants eMAIL_ = RedirectTypeConstants._internal("EMAIL");

  RedirectTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "DOMAIN": value = data; break;
          case "EMAIL": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(RedirectTypeConstants data) {
    return data.value;
  }
}

