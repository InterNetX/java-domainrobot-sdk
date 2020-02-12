part of swagger.api;

class JsonNoData {
    JsonNoData();

  @override
  String toString() {
    return 'JsonNoData[]';
  }

  JsonNoData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<JsonNoData> listFromJson(List<dynamic> json) {
    return json == null ? new List<JsonNoData>() : json.map((value) => new JsonNoData.fromJson(value)).toList();
  }

  static Map<String, JsonNoData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, JsonNoData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new JsonNoData.fromJson(value));
    }
    return map;
  }
}

