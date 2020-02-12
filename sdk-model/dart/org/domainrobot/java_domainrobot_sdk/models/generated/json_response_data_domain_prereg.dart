part of swagger.api;

class JsonResponseDataDomainPrereg {
  /* The server transaction id for the response. */
  String stid = null;
  
/* The messages belonging to the response. */
  List<Message> messages = [];
  
/* The status of the response. */
  ResponseStatus status = null;
  
/* The object of the response. */
  ResponseObject object = null;
  
/* The data for the response. The type of the objects are depending on the request and are also specified in the responseObject value of the response. */
  List<DomainPrereg> data = [];
  
/* The client transaction id for the response. */
  String ctid = null;
  
  JsonResponseDataDomainPrereg();

  @override
  String toString() {
    return 'JsonResponseDataDomainPrereg[stid=$stid, messages=$messages, status=$status, object=$object, data=$data, ctid=$ctid, ]';
  }

  JsonResponseDataDomainPrereg.fromJson(Map<String, dynamic> json) {
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
      DomainPrereg.listFromJson(json['data'])
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

  static List<JsonResponseDataDomainPrereg> listFromJson(List<dynamic> json) {
    return json == null ? new List<JsonResponseDataDomainPrereg>() : json.map((value) => new JsonResponseDataDomainPrereg.fromJson(value)).toList();
  }

  static Map<String, JsonResponseDataDomainPrereg> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, JsonResponseDataDomainPrereg>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new JsonResponseDataDomainPrereg.fromJson(value));
    }
    return map;
  }
}

