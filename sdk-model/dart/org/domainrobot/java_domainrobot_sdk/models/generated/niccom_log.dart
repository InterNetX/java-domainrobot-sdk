part of swagger.api;

class NiccomLog {
  /* The jobId of the niccom log. */
  int jobId = null;
  
/* The vertexId of the niccom log. */
  int vertexId = null;
  
/* The name of the niccom log. */
  String name = null;
  
/* The task of the niccom log. */
  String task = null;
  
/* The nicTransactionId of the niccom log. */
  String nicTransactionId = null;
  
/* The source of the niccom log. */
  NiccomSourceConstants source = null;
  
/* The text of the niccom log. */
  String text = null;
  
/* The created date of the niccom log. */
  DateTime created = null;
  
  NiccomLog();

  @override
  String toString() {
    return 'NiccomLog[jobId=$jobId, vertexId=$vertexId, name=$name, task=$task, nicTransactionId=$nicTransactionId, source=$source, text=$text, created=$created, ]';
  }

  NiccomLog.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    jobId =
        json['jobId']
    ;
    vertexId =
        json['vertexId']
    ;
    name =
        json['name']
    ;
    task =
        json['task']
    ;
    nicTransactionId =
        json['nicTransactionId']
    ;
    source =
      
      
      new NiccomSourceConstants.fromJson(json['source'])
;
    text =
        json['text']
    ;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
  }

  Map<String, dynamic> toJson() {
    return {
      'jobId': jobId,
      'vertexId': vertexId,
      'name': name,
      'task': task,
      'nicTransactionId': nicTransactionId,
      'source': source,
      'text': text,
      'created': created == null ? '' : created.toUtc().toIso8601String()
     };
  }

  static List<NiccomLog> listFromJson(List<dynamic> json) {
    return json == null ? new List<NiccomLog>() : json.map((value) => new NiccomLog.fromJson(value)).toList();
  }

  static Map<String, NiccomLog> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NiccomLog>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NiccomLog.fromJson(value));
    }
    return map;
  }
}

