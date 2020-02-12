part of swagger.api;

class PriceServiceData {
  /* The debug time */
  int debugTime = null;
  
/* The status */
  DomainStudioServiceStatus status = null;
  
/* A message with more information, if the status is FAILED. */
  String message = null;
  
/* The subject products */
  PriceData data = null;
  
  PriceServiceData();

  @override
  String toString() {
    return 'PriceServiceData[debugTime=$debugTime, status=$status, message=$message, data=$data, ]';
  }

  PriceServiceData.fromJson(Map<String, dynamic> json) {
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
      
      
      new PriceData.fromJson(json['data'])
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

  static List<PriceServiceData> listFromJson(List<dynamic> json) {
    return json == null ? new List<PriceServiceData>() : json.map((value) => new PriceServiceData.fromJson(value)).toList();
  }

  static Map<String, PriceServiceData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PriceServiceData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PriceServiceData.fromJson(value));
    }
    return map;
  }
}

