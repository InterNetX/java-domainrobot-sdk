part of swagger.api;

class CodeSigningType {
  /// The underlying value of this enum member.
  String value;

  CodeSigningType._internal(this.value);

  static CodeSigningType jAVASOFT_ = CodeSigningType._internal("JAVASOFT");
  static CodeSigningType mSAUTHENTICODE_ = CodeSigningType._internal("MS_AUTHENTICODE");
  static CodeSigningType vBA_ = CodeSigningType._internal("VBA");
  static CodeSigningType aDOBEAIR_ = CodeSigningType._internal("ADOBE_AIR");
  static CodeSigningType aPPLE_ = CodeSigningType._internal("APPLE");

  CodeSigningType.fromJson(dynamic data) {
    switch (data) {
          case "JAVASOFT": value = data; break;
          case "MS_AUTHENTICODE": value = data; break;
          case "VBA": value = data; break;
          case "ADOBE_AIR": value = data; break;
          case "APPLE": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(CodeSigningType data) {
    return data.value;
  }
}

