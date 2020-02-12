part of swagger.api;

class TmchMarkComment {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  

  TmchMarkStatusConstants status = null;
  

  String comment = null;
  

  BasicUser user = null;
  
  TmchMarkComment();

  @override
  String toString() {
    return 'TmchMarkComment[created=$created, updated=$updated, status=$status, comment=$comment, user=$user, ]';
  }

  TmchMarkComment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    status =
      
      
      new TmchMarkStatusConstants.fromJson(json['status'])
;
    comment =
        json['comment']
    ;
    user =
      
      
      new BasicUser.fromJson(json['user'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'status': status,
      'comment': comment,
      'user': user
     };
  }

  static List<TmchMarkComment> listFromJson(List<dynamic> json) {
    return json == null ? new List<TmchMarkComment>() : json.map((value) => new TmchMarkComment.fromJson(value)).toList();
  }

  static Map<String, TmchMarkComment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TmchMarkComment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TmchMarkComment.fromJson(value));
    }
    return map;
  }
}

