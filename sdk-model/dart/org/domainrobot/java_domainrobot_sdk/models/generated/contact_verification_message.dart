part of swagger.api;

class ContactVerificationMessage {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* the email of the VerificationMessage */
  Message mail = null;
  
/* the status of the VerificationMessage */
  GenericStatusConstants status = null;
  
  ContactVerificationMessage();

  @override
  String toString() {
    return 'ContactVerificationMessage[created=$created, updated=$updated, mail=$mail, status=$status, ]';
  }

  ContactVerificationMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    mail =
      
      
      new Message.fromJson(json['mail'])
;
    status =
      
      
      new GenericStatusConstants.fromJson(json['status'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'mail': mail,
      'status': status
     };
  }

  static List<ContactVerificationMessage> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactVerificationMessage>() : json.map((value) => new ContactVerificationMessage.fromJson(value)).toList();
  }

  static Map<String, ContactVerificationMessage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactVerificationMessage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactVerificationMessage.fromJson(value));
    }
    return map;
  }
}

