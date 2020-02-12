part of swagger.api;

class ModelVoid {
    ModelVoid();

  @override
  String toString() {
    return 'ModelVoid[]';
  }

  ModelVoid.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<ModelVoid> listFromJson(List<dynamic> json) {
    return json == null ? new List<ModelVoid>() : json.map((value) => new ModelVoid.fromJson(value)).toList();
  }

  static Map<String, ModelVoid> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ModelVoid>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ModelVoid.fromJson(value));
    }
    return map;
  }
}

