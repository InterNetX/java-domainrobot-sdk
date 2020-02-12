part of swagger.api;

class BillingObjectLimit {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  

  String articleLabel = null;
  

  int limitSelf = null;
  

  int limitChildren = null;
  

  String articleTypeLabel = null;
  
/* The current count if available */
  int count = null;
  
  BillingObjectLimit();

  @override
  String toString() {
    return 'BillingObjectLimit[created=$created, updated=$updated, articleLabel=$articleLabel, limitSelf=$limitSelf, limitChildren=$limitChildren, articleTypeLabel=$articleTypeLabel, count=$count, ]';
  }

  BillingObjectLimit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    articleLabel =
        json['articleLabel']
    ;
    limitSelf =
        json['limitSelf']
    ;
    limitChildren =
        json['limitChildren']
    ;
    articleTypeLabel =
        json['articleTypeLabel']
    ;
    count =
        json['count']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'articleLabel': articleLabel,
      'limitSelf': limitSelf,
      'limitChildren': limitChildren,
      'articleTypeLabel': articleTypeLabel,
      'count': count
     };
  }

  static List<BillingObjectLimit> listFromJson(List<dynamic> json) {
    return json == null ? new List<BillingObjectLimit>() : json.map((value) => new BillingObjectLimit.fromJson(value)).toList();
  }

  static Map<String, BillingObjectLimit> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BillingObjectLimit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BillingObjectLimit.fromJson(value));
    }
    return map;
  }
}

