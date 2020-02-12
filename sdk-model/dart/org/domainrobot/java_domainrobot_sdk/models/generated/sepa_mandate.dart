part of swagger.api;

class SEPAMandate {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The sepa mandate reference */
  String reference = null;
  
/* The date of the confirm signature */
  DateTime confirmSignature = null;
  
/* The address of the confirm signature */
  InetAddress confirmIp = null;
  
/* The user agent of the confirm signature */
  String confirmUseragent = null;
  
/* Flag for indicating if the confirm data has been checked */
  bool confirmChecked = null;
  
/* Date after the mandate will be expired */
  DateTime expire = null;
  
/* A list of historized sepa mandates */
  List<SEPAMandate> histories = [];
  
/* The holder of the bank account */
  String accountHolder = null;
  
/* The bank iban */
  String iban = null;
  
/* The bank bic */
  String bic = null;
  
  SEPAMandate();

  @override
  String toString() {
    return 'SEPAMandate[created=$created, updated=$updated, reference=$reference, confirmSignature=$confirmSignature, confirmIp=$confirmIp, confirmUseragent=$confirmUseragent, confirmChecked=$confirmChecked, expire=$expire, histories=$histories, accountHolder=$accountHolder, iban=$iban, bic=$bic, ]';
  }

  SEPAMandate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    reference =
        json['reference']
    ;
    confirmSignature = json['confirmSignature'] == null ? null : DateTime.parse(json['confirmSignature']);
    confirmIp =
      
      
      new InetAddress.fromJson(json['confirmIp'])
;
    confirmUseragent =
        json['confirmUseragent']
    ;
    confirmChecked =
        json['confirmChecked']
    ;
    expire = json['expire'] == null ? null : DateTime.parse(json['expire']);
    histories =
      SEPAMandate.listFromJson(json['histories'])
;
    accountHolder =
        json['accountHolder']
    ;
    iban =
        json['iban']
    ;
    bic =
        json['bic']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'reference': reference,
      'confirmSignature': confirmSignature == null ? '' : confirmSignature.toUtc().toIso8601String(),
      'confirmIp': confirmIp,
      'confirmUseragent': confirmUseragent,
      'confirmChecked': confirmChecked,
      'expire': expire == null ? '' : expire.toUtc().toIso8601String(),
      'histories': histories,
      'accountHolder': accountHolder,
      'iban': iban,
      'bic': bic
     };
  }

  static List<SEPAMandate> listFromJson(List<dynamic> json) {
    return json == null ? new List<SEPAMandate>() : json.map((value) => new SEPAMandate.fromJson(value)).toList();
  }

  static Map<String, SEPAMandate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SEPAMandate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SEPAMandate.fromJson(value));
    }
    return map;
  }
}

