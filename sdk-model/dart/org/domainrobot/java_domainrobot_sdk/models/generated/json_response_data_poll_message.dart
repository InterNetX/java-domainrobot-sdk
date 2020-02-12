part of swagger.api;

class JsonResponseDataPollMessage {
  /* The server transaction id for the response. */
  String stid = null;
  
/* The messages belonging to the response. */
  List<Message> messages = [];
  
/* The status of the response. */
  ResponseStatus status = null;
  
/* The object of the response. */
  ResponseObject object = null;
  
/* The data for the response. The type of the objects are depending on the request and are also specified in the responseObject value of the response. */
  List<PollMessage> data = [];
  
/* The client transaction id for the response. */
  String ctid = null;
  
  JsonResponseDataPollMessage();

  @override
  String toString() {
    return 'JsonResponseDataPollMessage[stid=$stid, messages=$messages, status=$status, object=$object, data=$data, ctid=$ctid, ]';
  }

  JsonResponseDataPollMessage.fromJson(Map<String, dynamic> json) {
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
      PollMessage.listFromJson(json['data'])
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

  static List<JsonResponseDataPollMessage> listFromJson(List<dynamic> json) {
    return json == null ? new List<JsonResponseDataPollMessage>() : json.map((value) => new JsonResponseDataPollMessage.fromJson(value)).toList();
  }

  static Map<String, JsonResponseDataPollMessage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, JsonResponseDataPollMessage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new JsonResponseDataPollMessage.fromJson(value));
    }
    return map;
  }
}

