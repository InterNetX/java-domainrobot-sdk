part of swagger.api;

class Application {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The name of the application. */
  String name = null;
  
/* The function codes for the application. */
  List<String> functionCodes = [];
  
  Application();

  @override
  String toString() {
    return 'Application[created=$created, updated=$updated, name=$name, functionCodes=$functionCodes, ]';
  }

  Application.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    name =
        json['name']
    ;
    functionCodes =
        (json['functionCodes'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'name': name,
      'functionCodes': functionCodes
     };
  }

  static List<Application> listFromJson(List<dynamic> json) {
    return json == null ? new List<Application>() : json.map((value) => new Application.fromJson(value)).toList();
  }

  static Map<String, Application> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Application>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Application.fromJson(value));
    }
    return map;
  }
}

