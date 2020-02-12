part of swagger.api;

class JsonResponseDataMailProxy {
  /* The server transaction id for the response. */
  String stid = null;
  
/* The messages belonging to the response. */
  List<Message> messages = [];
  
/* The status of the response. */
  ResponseStatus status = null;
  
/* The object of the response. */
  ResponseObject object = null;
  
/* The data for the response. The type of the objects are depending on the request and are also specified in the responseObject value of the response. */
  List<MailProxy> data = [];
  
/* The client transaction id for the response. */
  String ctid = null;
  
  JsonResponseDataMailProxy();

  @override
  String toString() {
    return 'JsonResponseDataMailProxy[stid=$stid, messages=$messages, status=$status, object=$object, data=$data, ctid=$ctid, ]';
  }

  JsonResponseDataMailProxy.fromJson(Map<String, dynamic> json) {
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
      MailProxy.listFromJson(json['data'])
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

  static List<JsonResponseDataMailProxy> listFromJson(List<dynamic> json) {
    return json == null ? new List<JsonResponseDataMailProxy>() : json.map((value) => new JsonResponseDataMailProxy.fromJson(value)).toList();
  }

  static Map<String, JsonResponseDataMailProxy> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, JsonResponseDataMailProxy>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new JsonResponseDataMailProxy.fromJson(value));
    }
    return map;
  }
}

