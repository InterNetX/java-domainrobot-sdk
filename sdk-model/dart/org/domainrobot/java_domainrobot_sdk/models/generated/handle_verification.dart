part of swagger.api;

class HandleVerification {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updater of the object. */
  BasicUser updater = null;
  
/* the reference of the Verification */
  String reference = null;
  
/* the messageSend date of the Verification */
  DateTime messageSend = null;
  
/* the confirmed date of the Verification */
  DateTime confirmed = null;
  
/* the confirmIp of the Verification */
  InetAddress confirmIp = null;
  
/* the failed date of the Verification */
  DateTime failed = null;
  
/* the domains of the Verification */
  List<ContactVerificationDomain> domain = [];
  
/* the messages of the Verification */
  List<ContactVerificationMessage> verificationMail = [];
  
/* the comment of the Verification */
  String comment = null;
  
/* the action of the Verification */
  String action = null;
  
/* the contact of the Verification */
  Contact handle = null;
  
  HandleVerification();

  @override
  String toString() {
    return 'HandleVerification[created=$created, updated=$updated, owner=$owner, updater=$updater, reference=$reference, messageSend=$messageSend, confirmed=$confirmed, confirmIp=$confirmIp, failed=$failed, domain=$domain, verificationMail=$verificationMail, comment=$comment, action=$action, handle=$handle, ]';
  }

  HandleVerification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    reference =
        json['reference']
    ;
    messageSend = json['messageSend'] == null ? null : DateTime.parse(json['messageSend']);
    confirmed = json['confirmed'] == null ? null : DateTime.parse(json['confirmed']);
    confirmIp =
      
      
      new InetAddress.fromJson(json['confirmIp'])
;
    failed = json['failed'] == null ? null : DateTime.parse(json['failed']);
    domain =
      ContactVerificationDomain.listFromJson(json['domain'])
;
    verificationMail =
      ContactVerificationMessage.listFromJson(json['verificationMail'])
;
    comment =
        json['comment']
    ;
    action =
        json['action']
    ;
    handle =
      
      
      new Contact.fromJson(json['handle'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'reference': reference,
      'messageSend': messageSend == null ? '' : messageSend.toUtc().toIso8601String(),
      'confirmed': confirmed == null ? '' : confirmed.toUtc().toIso8601String(),
      'confirmIp': confirmIp,
      'failed': failed == null ? '' : failed.toUtc().toIso8601String(),
      'domain': domain,
      'verificationMail': verificationMail,
      'comment': comment,
      'action': action,
      'handle': handle
     };
  }

  static List<HandleVerification> listFromJson(List<dynamic> json) {
    return json == null ? new List<HandleVerification>() : json.map((value) => new HandleVerification.fromJson(value)).toList();
  }

  static Map<String, HandleVerification> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HandleVerification>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HandleVerification.fromJson(value));
    }
    return map;
  }
}

