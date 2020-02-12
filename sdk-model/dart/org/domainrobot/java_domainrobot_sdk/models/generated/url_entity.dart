part of swagger.api;

class UrlEntity {
    UrlEntity();

  @override
  String toString() {
    return 'UrlEntity[]';
  }

  UrlEntity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<UrlEntity> listFromJson(List<dynamic> json) {
    return json == null ? new List<UrlEntity>() : json.map((value) => new UrlEntity.fromJson(value)).toList();
  }

  static Map<String, UrlEntity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UrlEntity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UrlEntity.fromJson(value));
    }
    return map;
  }
}

