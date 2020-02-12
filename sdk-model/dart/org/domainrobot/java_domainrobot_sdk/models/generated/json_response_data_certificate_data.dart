part of swagger.api;

class JsonResponseDataCertificateData {
  /* The server transaction id for the response. */
  String stid = null;
  
/* The messages belonging to the response. */
  List<Message> messages = [];
  
/* The status of the response. */
  ResponseStatus status = null;
  
/* The object of the response. */
  ResponseObject object = null;
  
/* The data for the response. The type of the objects are depending on the request and are also specified in the responseObject value of the response. */
  List<CertificateData> data = [];
  
/* The client transaction id for the response. */
  String ctid = null;
  
  JsonResponseDataCertificateData();

  @override
  String toString() {
    return 'JsonResponseDataCertificateData[stid=$stid, messages=$messages, status=$status, object=$object, data=$data, ctid=$ctid, ]';
  }

  JsonResponseDataCertificateData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    stid =
        json['stid']
    ;
    messages =
      Message.listFromJson(json['messages'])
;
    status =
      
      
      new ResponseStatus.fromJson(json['status'])
;
    object =
      
      
      new ResponseObject.fromJson(json['object'])
;
    data =
      CertificateData.listFromJson(json['data'])
;
    ctid =
        json['ctid']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'stid': stid,
      'messages': messages,
      'status': status,
      'object': object,
      'data': data,
      'ctid': ctid
     };
  }

  static List<JsonResponseDataCertificateData> listFromJson(List<dynamic> json) {
    return json == null ? new List<JsonResponseDataCertificateData>() : json.map((value) => new JsonResponseDataCertificateData.fromJson(value)).toList();
  }

  static Map<String, JsonResponseDataCertificateData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, JsonResponseDataCertificateData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new JsonResponseDataCertificateData.fromJson(value));
    }
    return map;
  }
}

