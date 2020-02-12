part of swagger.api;

class ConditionType {
  /// The underlying value of this enum member.
  String value;

  ConditionType._internal(this.value);

  static ConditionType aND_ = ConditionType._internal("AND");
  static ConditionType oR_ = ConditionType._internal("OR");

  ConditionType.fromJson(dynamic data) {
    switch (data) {
          case "AND": value = data; break;
          case "OR": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ConditionType data) {
    return data.value;
  }
}

