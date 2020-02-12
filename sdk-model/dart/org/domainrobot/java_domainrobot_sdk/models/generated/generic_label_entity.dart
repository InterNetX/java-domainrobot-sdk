part of swagger.api;

class GenericLabelEntity {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* Lorem Ipum */
  String label = null;
  
/* The name of the contract. */
  String name = null;
  
/* The related package label of the contract */
  String packageLabel = null;
  
  GenericLabelEntity();

  @override
  String toString() {
    return 'GenericLabelEntity[created=$created, updated=$updated, label=$label, name=$name, packageLabel=$packageLabel, ]';
  }

  GenericLabelEntity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    label =
        json['label']
    ;
    name =
        json['name']
    ;
    packageLabel =
        json['packageLabel']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'label': label,
      'name': name,
      'packageLabel': packageLabel
     };
  }

  static List<GenericLabelEntity> listFromJson(List<dynamic> json) {
    return json == null ? new List<GenericLabelEntity>() : json.map((value) => new GenericLabelEntity.fromJson(value)).toList();
  }

  static Map<String, GenericLabelEntity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GenericLabelEntity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GenericLabelEntity.fromJson(value));
    }
    return map;
  }
}

