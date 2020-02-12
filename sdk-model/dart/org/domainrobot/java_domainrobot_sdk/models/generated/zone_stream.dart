part of swagger.api;

class ZoneStream {
  /* the records to add. */
  List<ResourceRecord> adds = [];
  
/* the records to remove. */
  List<ResourceRecord> rems = [];
  
  ZoneStream();

  @override
  String toString() {
    return 'ZoneStream[adds=$adds, rems=$rems, ]';
  }

  ZoneStream.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    adds =
      ResourceRecord.listFromJson(json['adds'])
;
    rems =
      ResourceRecord.listFromJson(json['rems'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'adds': adds,
      'rems': rems
     };
  }

  static List<ZoneStream> listFromJson(List<dynamic> json) {
    return json == null ? new List<ZoneStream>() : json.map((value) => new ZoneStream.fromJson(value)).toList();
  }

  static Map<String, ZoneStream> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ZoneStream>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ZoneStream.fromJson(value));
    }
    return map;
  }
}

