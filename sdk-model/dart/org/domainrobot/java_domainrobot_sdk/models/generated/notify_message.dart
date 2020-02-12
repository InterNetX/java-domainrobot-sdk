part of swagger.api;

class NotifyMessage {
  /* The specific message type. */
  String type = null;
  
  NotifyMessage();

  @override
  String toString() {
    return 'NotifyMessage[type=$type, ]';
  }

  NotifyMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        json['type']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type
     };
  }

  static List<NotifyMessage> listFromJson(List<dynamic> json) {
    return json == null ? new List<NotifyMessage>() : json.map((value) => new NotifyMessage.fromJson(value)).toList();
  }

  static Map<String, NotifyMessage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NotifyMessage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NotifyMessage.fromJson(value));
    }
    return map;
  }
}

