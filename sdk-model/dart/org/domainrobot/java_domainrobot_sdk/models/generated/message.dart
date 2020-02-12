part of swagger.api;

class Message {
  /* The text. */
  String text = null;
  
/* The messages. */
  List<Message> messages = [];
  
/* The objects. */
  List<GenericObject> objects = [];
  
/* The message code. */
  String code = null;
  
/* The status of the message code. */
  StatusType status = null;
  
  Message();

  @override
  String toString() {
    return 'Message[text=$text, messages=$messages, objects=$objects, code=$code, status=$status, ]';
  }

  Message.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    text =
        json['text']
    ;
    messages =
      Message.listFromJson(json['messages'])
;
    objects =
      GenericObject.listFromJson(json['objects'])
;
    code =
        json['code']
    ;
    status =
      
      
      new StatusType.fromJson(json['status'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'messages': messages,
      'objects': objects,
      'code': code,
      'status': status
     };
  }

  static List<Message> listFromJson(List<dynamic> json) {
    return json == null ? new List<Message>() : json.map((value) => new Message.fromJson(value)).toList();
  }

  static Map<String, Message> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Message>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Message.fromJson(value));
    }
    return map;
  }
}

