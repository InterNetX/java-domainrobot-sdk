part of swagger.api;

class ACLRestriction {
  /// The underlying value of this enum member.
  String value;

  ACLRestriction._internal(this.value);

  static ACLRestriction uSERLOCKED_ = ACLRestriction._internal("USER_LOCKED");
  static ACLRestriction cHILDRENLOCKED_ = ACLRestriction._internal("CHILDREN_LOCKED");
  static ACLRestriction pARENTLOCK_ = ACLRestriction._internal("PARENT_LOCK");
  static ACLRestriction nOTLOCKED_ = ACLRestriction._internal("NOT_LOCKED");

  ACLRestriction.fromJson(dynamic data) {
    switch (data) {
          case "USER_LOCKED": value = data; break;
          case "CHILDREN_LOCKED": value = data; break;
          case "PARENT_LOCK": value = data; break;
          case "NOT_LOCKED": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ACLRestriction data) {
    return data.value;
  }
}

