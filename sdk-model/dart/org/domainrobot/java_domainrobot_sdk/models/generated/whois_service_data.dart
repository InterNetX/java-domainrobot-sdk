part of swagger.api;

class WhoisServiceData {
  /* The debug time */
  int debugTime = null;
  
/* The status */
  DomainStudioServiceStatus status = null;
  
/* A message with more information, if the status is FAILED. */
  String message = null;
  
/* The service data */
  WhoisStatus data = null;
  
  WhoisServiceData();

  @override
  String toString() {
    return 'WhoisServiceData[debugTime=$debugTime, status=$status, message=$message, data=$data, ]';
  }

  WhoisServiceData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    debugTime =
        json['debugTime']
    ;
    status =
      
      
      new DomainStudioServiceStatus.fromJson(json['status'])
;
    message =
        json['message']
    ;
    data =
      
      
      new WhoisStatus.fromJson(json['data'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'debugTime': debugTime,
      'status': status,
      'message': message,
      'data': data
     };
  }

  static List<WhoisServiceData> listFromJson(List<dynamic> json) {
    return json == null ? new List<WhoisServiceData>() : json.map((value) => new WhoisServiceData.fromJson(value)).toList();
  }

  static Map<String, WhoisServiceData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WhoisServiceData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WhoisServiceData.fromJson(value));
    }
    return map;
  }
}

