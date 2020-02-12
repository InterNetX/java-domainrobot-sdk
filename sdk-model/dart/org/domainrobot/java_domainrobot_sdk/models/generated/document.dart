part of swagger.api;

class Document {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  

  int id = null;
  

  String comment = null;
  

  String type = null;
  

  String mimeType = null;
  

  String data = null;
  

  int size = null;
  

  String name = null;
  

  String link = null;
  
  Document();

  @override
  String toString() {
    return 'Document[created=$created, updated=$updated, id=$id, comment=$comment, type=$type, mimeType=$mimeType, data=$data, size=$size, name=$name, link=$link, ]';
  }

  Document.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    id =
        json['id']
    ;
    comment =
        json['comment']
    ;
    type =
        json['type']
    ;
    mimeType =
        json['mimeType']
    ;
    data =
        json['data']
    ;
    size =
        json['size']
    ;
    name =
        json['name']
    ;
    link =
        json['link']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'id': id,
      'comment': comment,
      'type': type,
      'mimeType': mimeType,
      'data': data,
      'size': size,
      'name': name,
      'link': link
     };
  }

  static List<Document> listFromJson(List<dynamic> json) {
    return json == null ? new List<Document>() : json.map((value) => new Document.fromJson(value)).toList();
  }

  static Map<String, Document> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Document>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Document.fromJson(value));
    }
    return map;
  }
}

