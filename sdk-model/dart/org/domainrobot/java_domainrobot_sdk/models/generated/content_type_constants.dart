part of swagger.api;

class ContentTypeConstants {
  /// The underlying value of this enum member.
  String value;

  ContentTypeConstants._internal(this.value);

  static ContentTypeConstants pDF_ = ContentTypeConstants._internal("PDF");
  static ContentTypeConstants jPG_ = ContentTypeConstants._internal("JPG");

  ContentTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "PDF": value = data; break;
          case "JPG": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ContentTypeConstants data) {
    return data.value;
  }
}

