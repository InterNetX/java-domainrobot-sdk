part of swagger.api;

class TrustedApplicationFunctions {
  /* The allowed functions for the trusted application. */
  List<String> functionCodes = [];
  
  TrustedApplicationFunctions();

  @override
  String toString() {
    return 'TrustedApplicationFunctions[functionCodes=$functionCodes, ]';
  }

  TrustedApplicationFunctions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    functionCodes =
        (json['functionCodes'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'functionCodes': functionCodes
     };
  }

  static List<TrustedApplicationFunctions> listFromJson(List<dynamic> json) {
    return json == null ? new List<TrustedApplicationFunctions>() : json.map((value) => new TrustedApplicationFunctions.fromJson(value)).toList();
  }

  static Map<String, TrustedApplicationFunctions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TrustedApplicationFunctions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TrustedApplicationFunctions.fromJson(value));
    }
    return map;
  }
}

