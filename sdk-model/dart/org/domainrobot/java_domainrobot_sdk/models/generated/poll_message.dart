part of swagger.api;

class PollMessage {
  /* The message id. */
  int id = null;
  
/* The owner of the message. */
  BasicUser owner = null;
  
/* The job data. Available if the message is a job message */
  WorkflowSpool job = null;
  
/* The notification data. Available if the message is a notification message */
  NotifyMessage notify = null;
  
/* The server transaction id. */
  String stid = null;
  
/* the custom transaction id. */
  String ctid = null;
  
/* The general localized messages. */
  List<Message> messages = [];
  
/* Optional message flags. */
  String flags = null;
  
/* The created date. */
  DateTime created = null;
  
/* The object of the job or notify. */
  ResponseObject object = null;
  
  PollMessage();

  @override
  String toString() {
    return 'PollMessage[id=$id, owner=$owner, job=$job, notify=$notify, stid=$stid, ctid=$ctid, messages=$messages, flags=$flags, created=$created, object=$object, ]';
  }

  PollMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    job =
      
      
      new WorkflowSpool.fromJson(json['job'])
;
    notify =
      
      
      new NotifyMessage.fromJson(json['notify'])
;
    stid =
        json['stid']
    ;
    ctid =
        json['ctid']
    ;
    messages =
      Message.listFromJson(json['messages'])
;
    flags =
        json['flags']
    ;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    object =
      
      
      new ResponseObject.fromJson(json['object'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'owner': owner,
      'job': job,
      'notify': notify,
      'stid': stid,
      'ctid': ctid,
      'messages': messages,
      'flags': flags,
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'object': object
     };
  }

  static List<PollMessage> listFromJson(List<dynamic> json) {
    return json == null ? new List<PollMessage>() : json.map((value) => new PollMessage.fromJson(value)).toList();
  }

  static Map<String, PollMessage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PollMessage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PollMessage.fromJson(value));
    }
    return map;
  }
}

