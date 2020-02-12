part of swagger.api;

class Transfer {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updating user of the object. */
  BasicUser updater = null;
  
/* The domain name. */
  String domain = null;
  
/* The gaining registrar. */
  String gainingRegistrar = null;
  
/* The loosing registrar. */
  String loosingRegistrar = null;
  
/* The start date. */
  DateTime start = null;
  
/* The reminder date. */
  DateTime reminder = null;
  
/* The auto ack date. */
  DateTime autoAck = null;
  
/* The auto nack date. */
  DateTime autoNack = null;
  
/* The end date. */
  DateTime end = null;
  
/* Autoanswer active. */
  bool autoAnswer = null;
  
/* The recipient. */
  String recipient = null;
  
/* The mailserver. */
  String mailserver = null;
  
/* The delivered mailserver. */
  String deliveredMailserver = null;
  
/* The delivered date. */
  DateTime delivered = null;
  
/* The transfer status. */
  TransferStatusConstants status = null;
  
  Transfer();

  @override
  String toString() {
    return 'Transfer[created=$created, updated=$updated, owner=$owner, updater=$updater, domain=$domain, gainingRegistrar=$gainingRegistrar, loosingRegistrar=$loosingRegistrar, start=$start, reminder=$reminder, autoAck=$autoAck, autoNack=$autoNack, end=$end, autoAnswer=$autoAnswer, recipient=$recipient, mailserver=$mailserver, deliveredMailserver=$deliveredMailserver, delivered=$delivered, status=$status, ]';
  }

  Transfer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    domain =
        json['domain']
    ;
    gainingRegistrar =
        json['gainingRegistrar']
    ;
    loosingRegistrar =
        json['loosingRegistrar']
    ;
    start = json['start'] == null ? null : DateTime.parse(json['start']);
    reminder = json['reminder'] == null ? null : DateTime.parse(json['reminder']);
    autoAck = json['autoAck'] == null ? null : DateTime.parse(json['autoAck']);
    autoNack = json['autoNack'] == null ? null : DateTime.parse(json['autoNack']);
    end = json['end'] == null ? null : DateTime.parse(json['end']);
    autoAnswer =
        json['autoAnswer']
    ;
    recipient =
        json['recipient']
    ;
    mailserver =
        json['mailserver']
    ;
    deliveredMailserver =
        json['deliveredMailserver']
    ;
    delivered = json['delivered'] == null ? null : DateTime.parse(json['delivered']);
    status =
      
      
      new TransferStatusConstants.fromJson(json['status'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'domain': domain,
      'gainingRegistrar': gainingRegistrar,
      'loosingRegistrar': loosingRegistrar,
      'start': start == null ? '' : start.toUtc().toIso8601String(),
      'reminder': reminder == null ? '' : reminder.toUtc().toIso8601String(),
      'autoAck': autoAck == null ? '' : autoAck.toUtc().toIso8601String(),
      'autoNack': autoNack == null ? '' : autoNack.toUtc().toIso8601String(),
      'end': end == null ? '' : end.toUtc().toIso8601String(),
      'autoAnswer': autoAnswer,
      'recipient': recipient,
      'mailserver': mailserver,
      'deliveredMailserver': deliveredMailserver,
      'delivered': delivered == null ? '' : delivered.toUtc().toIso8601String(),
      'status': status
     };
  }

  static List<Transfer> listFromJson(List<dynamic> json) {
    return json == null ? new List<Transfer>() : json.map((value) => new Transfer.fromJson(value)).toList();
  }

  static Map<String, Transfer> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Transfer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Transfer.fromJson(value));
    }
    return map;
  }
}

