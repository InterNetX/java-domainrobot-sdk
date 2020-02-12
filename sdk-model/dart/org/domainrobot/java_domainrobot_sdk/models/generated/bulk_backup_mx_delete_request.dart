part of swagger.api;

class BulkBackupMxDeleteRequest {
  /* The objects to process */
  List<BackupMx> objects = [];
  
/* The query to fetch the object instead of defined list */
  Query query = null;
  
  BulkBackupMxDeleteRequest();

  @override
  String toString() {
    return 'BulkBackupMxDeleteRequest[objects=$objects, query=$query, ]';
  }

  BulkBackupMxDeleteRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      BackupMx.listFromJson(json['objects'])
;
    query =
      
      
      new Query.fromJson(json['query'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'objects': objects,
      'query': query
     };
  }

  static List<BulkBackupMxDeleteRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkBackupMxDeleteRequest>() : json.map((value) => new BulkBackupMxDeleteRequest.fromJson(value)).toList();
  }

  static Map<String, BulkBackupMxDeleteRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkBackupMxDeleteRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkBackupMxDeleteRequest.fromJson(value));
    }
    return map;
  }
}

