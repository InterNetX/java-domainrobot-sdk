part of swagger.api;

class TransferOut {
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
  
/* The ctid. */
  String transaction = null;
  
/* The type of the transfer. */
  TransferAnswer type = null;
  
/* The reason. */
  int nackReason = null;
  
  TransferOut();

  @override
  String toString() {
    return 'TransferOut[created=$created, updated=$updated, owner=$owner, updater=$updater, domain=$domain, gainingRegistrar=$gainingRegistrar, loosingRegistrar=$loosingRegistrar, start=$start, reminder=$reminder, autoAck=$autoAck, autoNack=$autoNack, end=$end, autoAnswer=$autoAnswer, recipient=$recipient, mailserver=$mailserver, deliveredMailserver=$deliveredMailserver, delivered=$delivered, transaction=$transaction, type=$type, nackReason=$nackReason, ]';
  }

  TransferOut.fromJson(Map<String, dynamic> json) {
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
    transaction =
        json['transaction']
    ;
    type =
      
      
      new TransferAnswer.fromJson(json['type'])
;
    nackReason =
        json['nackReason']
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
      'transaction': transaction,
      'type': type,
      'nackReason': nackReason
     };
  }

  static List<TransferOut> listFromJson(List<dynamic> json) {
    return json == null ? new List<TransferOut>() : json.map((value) => new TransferOut.fromJson(value)).toList();
  }

  static Map<String, TransferOut> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TransferOut>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TransferOut.fromJson(value));
    }
    return map;
  }
}

