part of swagger.api;

class TmchMarkHolderConstants {
  /// The underlying value of this enum member.
  String value;

  TmchMarkHolderConstants._internal(this.value);

  static TmchMarkHolderConstants oWNER_ = TmchMarkHolderConstants._internal("OWNER");
  static TmchMarkHolderConstants lICENSEE_ = TmchMarkHolderConstants._internal("LICENSEE");
  static TmchMarkHolderConstants aSSIGNEE_ = TmchMarkHolderConstants._internal("ASSIGNEE");

  TmchMarkHolderConstants.fromJson(dynamic data) {
    switch (data) {
          case "OWNER": value = data; break;
          case "LICENSEE": value = data; break;
          case "ASSIGNEE": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(TmchMarkHolderConstants data) {
    return data.value;
  }
}

