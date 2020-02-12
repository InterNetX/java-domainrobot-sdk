part of swagger.api;

class ModelOperator {
  /// The underlying value of this enum member.
  String value;

  ModelOperator._internal(this.value);

  static ModelOperator eQUAL_ = ModelOperator._internal("EQUAL");
  static ModelOperator nOTEQUAL_ = ModelOperator._internal("NOT_EQUAL");
  static ModelOperator nOTLIKE_ = ModelOperator._internal("NOT_LIKE");
  static ModelOperator lIKE_ = ModelOperator._internal("LIKE");
  static ModelOperator iLIKE_ = ModelOperator._internal("ILIKE");
  static ModelOperator gREATER_ = ModelOperator._internal("GREATER");
  static ModelOperator gREATEREQUAL_ = ModelOperator._internal("GREATER_EQUAL");
  static ModelOperator lESS_ = ModelOperator._internal("LESS");
  static ModelOperator lESSEQUAL_ = ModelOperator._internal("LESS_EQUAL");
  static ModelOperator iSNULL_ = ModelOperator._internal("IS_NULL");
  static ModelOperator iSNOTNULL_ = ModelOperator._internal("IS_NOT_NULL");
  static ModelOperator iN_ = ModelOperator._internal("IN");

  ModelOperator.fromJson(dynamic data) {
    switch (data) {
          case "EQUAL": value = data; break;
          case "NOT_EQUAL": value = data; break;
          case "NOT_LIKE": value = data; break;
          case "LIKE": value = data; break;
          case "ILIKE": value = data; break;
          case "GREATER": value = data; break;
          case "GREATER_EQUAL": value = data; break;
          case "LESS": value = data; break;
          case "LESS_EQUAL": value = data; break;
          case "IS_NULL": value = data; break;
          case "IS_NOT_NULL": value = data; break;
          case "IN": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ModelOperator data) {
    return data.value;
  }
}

