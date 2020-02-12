part of swagger.api;

class TmchMarkDocument {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  

  TmchMark mark = null;
  

  DocumentTypeConstants type = null;
  

  String contentName = null;
  

  ContentTypeConstants contentType = null;
  

  String content = null;
  
  TmchMarkDocument();

  @override
  String toString() {
    return 'TmchMarkDocument[created=$created, updated=$updated, mark=$mark, type=$type, contentName=$contentName, contentType=$contentType, content=$content, ]';
  }

  TmchMarkDocument.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    mark =
      
      
      new TmchMark.fromJson(json['mark'])
;
    type =
      
      
      new DocumentTypeConstants.fromJson(json['type'])
;
    contentName =
        json['contentName']
    ;
    contentType =
      
      
      new ContentTypeConstants.fromJson(json['contentType'])
;
    content =
        json['content']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'mark': mark,
      'type': type,
      'contentName': contentName,
      'contentType': contentType,
      'content': content
     };
  }

  static List<TmchMarkDocument> listFromJson(List<dynamic> json) {
    return json == null ? new List<TmchMarkDocument>() : json.map((value) => new TmchMarkDocument.fromJson(value)).toList();
  }

  static Map<String, TmchMarkDocument> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TmchMarkDocument>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TmchMarkDocument.fromJson(value));
    }
    return map;
  }
}

