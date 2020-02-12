part of swagger.api;

class JsonResponseDataId4MeAgent {
  /* The server transaction id for the response. */
  String stid = null;
  
/* The messages belonging to the response. */
  List<Message> messages = [];
  
/* The status of the response. */
  ResponseStatus status = null;
  
/* The object of the response. */
  ResponseObject object = null;
  
/* The data for the response. The type of the objects are depending on the request and are also specified in the responseObject value of the response. */
  List<Id4MeAgent> data = [];
  
/* The client transaction id for the response. */
  String ctid = null;
  
  JsonResponseDataId4MeAgent();

  @override
  String toString() {
    return 'JsonResponseDataId4MeAgent[stid=$stid, messages=$messages, status=$status, object=$object, data=$data, ctid=$ctid, ]';
  }

  JsonResponseDataId4MeAgent.fromJson(Map<String, dynamic> json) {
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
      Id4MeAgent.listFromJson(json['data'])
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

  static List<JsonResponseDataId4MeAgent> listFromJson(List<dynamic> json) {
    return json == null ? new List<JsonResponseDataId4MeAgent>() : json.map((value) => new JsonResponseDataId4MeAgent.fromJson(value)).toList();
  }

  static Map<String, JsonResponseDataId4MeAgent> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, JsonResponseDataId4MeAgent>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new JsonResponseDataId4MeAgent.fromJson(value));
    }
    return map;
  }
}

