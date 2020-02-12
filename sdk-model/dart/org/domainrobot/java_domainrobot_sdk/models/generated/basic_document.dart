part of swagger.api;

class BasicDocument {
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
  
/* The unique identifier of the document */
  String uuid = null;
  
/* The alias of the document */
  String alias = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updating user of the object. */
  BasicUser updater = null;
  
  BasicDocument();

  @override
  String toString() {
    return 'BasicDocument[created=$created, updated=$updated, id=$id, comment=$comment, type=$type, mimeType=$mimeType, data=$data, size=$size, name=$name, link=$link, uuid=$uuid, alias=$alias, owner=$owner, updater=$updater, ]';
  }

  BasicDocument.fromJson(Map<String, dynamic> json) {
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
    uuid =
        json['uuid']
    ;
    alias =
        json['alias']
    ;
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
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
      'link': link,
      'uuid': uuid,
      'alias': alias,
      'owner': owner,
      'updater': updater
     };
  }

  static List<BasicDocument> listFromJson(List<dynamic> json) {
    return json == null ? new List<BasicDocument>() : json.map((value) => new BasicDocument.fromJson(value)).toList();
  }

  static Map<String, BasicDocument> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BasicDocument>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BasicDocument.fromJson(value));
    }
    return map;
  }
}

