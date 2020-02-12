part of swagger.api;

class ObjectAssignmentMode {
  /// The underlying value of this enum member.
  String value;

  ObjectAssignmentMode._internal(this.value);

  static ObjectAssignmentMode aSSIGN_ = ObjectAssignmentMode._internal("ASSIGN");
  static ObjectAssignmentMode dELETE_ = ObjectAssignmentMode._internal("DELETE");

  ObjectAssignmentMode.fromJson(dynamic data) {
    switch (data) {
          case "ASSIGN": value = data; break;
          case "DELETE": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ObjectAssignmentMode data) {
    return data.value;
  }
}

