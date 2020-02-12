part of swagger.api;

class EstimationServiceData {
  /* The debug time */
  int debugTime = null;
  
/* The status */
  DomainStudioServiceStatus status = null;
  
/* A message with more information, if the status is FAILED. */
  String message = null;
  
/* The service data */
  EstimationData data = null;
  
  EstimationServiceData();

  @override
  String toString() {
    return 'EstimationServiceData[debugTime=$debugTime, status=$status, message=$message, data=$data, ]';
  }

  EstimationServiceData.fromJson(Map<String, dynamic> json) {
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
      
      
      new EstimationData.fromJson(json['data'])
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

  static List<EstimationServiceData> listFromJson(List<dynamic> json) {
    return json == null ? new List<EstimationServiceData>() : json.map((value) => new EstimationServiceData.fromJson(value)).toList();
  }

  static Map<String, EstimationServiceData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EstimationServiceData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EstimationServiceData.fromJson(value));
    }
    return map;
  }
}

