part of swagger.api;

class BulkBackupMxPostRequest {
  /* The objects to process */
  List<BackupMx> objects = [];
  
/* The template for objects to process */
  BackupMx template = null;
  
  BulkBackupMxPostRequest();

  @override
  String toString() {
    return 'BulkBackupMxPostRequest[objects=$objects, template=$template, ]';
  }

  BulkBackupMxPostRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objects =
      BackupMx.listFromJson(json['objects'])
;
    template =
      
      
      new BackupMx.fromJson(json['template'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'objects': objects,
      'template': template
     };
  }

  static List<BulkBackupMxPostRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BulkBackupMxPostRequest>() : json.map((value) => new BulkBackupMxPostRequest.fromJson(value)).toList();
  }

  static Map<String, BulkBackupMxPostRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BulkBackupMxPostRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BulkBackupMxPostRequest.fromJson(value));
    }
    return map;
  }
}

