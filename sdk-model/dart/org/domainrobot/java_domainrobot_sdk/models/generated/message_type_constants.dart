part of swagger.api;

class MessageTypeConstants {
  /// The underlying value of this enum member.
  String value;

  MessageTypeConstants._internal(this.value);

  static MessageTypeConstants iNITIAL_ = MessageTypeConstants._internal("INITIAL");
  static MessageTypeConstants fIRSTREMINDER_ = MessageTypeConstants._internal("FIRST_REMINDER");
  static MessageTypeConstants sECONDREMINDER_ = MessageTypeConstants._internal("SECOND_REMINDER");
  static MessageTypeConstants lASTREMINDER_ = MessageTypeConstants._internal("LAST_REMINDER");

  MessageTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "INITIAL": value = data; break;
          case "FIRST_REMINDER": value = data; break;
          case "SECOND_REMINDER": value = data; break;
          case "LAST_REMINDER": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(MessageTypeConstants data) {
    return data.value;
  }
}

