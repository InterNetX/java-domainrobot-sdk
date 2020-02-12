part of swagger.api;

class OTPAuth {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updating user of the object. */
  BasicUser updater = null;
  
/* The type of protocol */
  ProtocolTypeConstants protocolType = null;
  
/* Crypto algorithm */
  CryptoFormatConstants algorithm = null;
  
/* Timeout in seconds */
  int timeout = null;
   // range from 5 to 90//
/* The length of the token */
  int digits = null;
  
/* Base32 encoded shared secret. */
  String secret = null;
  
/* The generated support 'tokens'. */
  List<String> tokens = [];
  
/* The generated qr code png. */
  BasicDocument qrCode = null;
  
  OTPAuth();

  @override
  String toString() {
    return 'OTPAuth[created=$created, updated=$updated, owner=$owner, updater=$updater, protocolType=$protocolType, algorithm=$algorithm, timeout=$timeout, digits=$digits, secret=$secret, tokens=$tokens, qrCode=$qrCode, ]';
  }

  OTPAuth.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    protocolType =
      
      
      new ProtocolTypeConstants.fromJson(json['protocolType'])
;
    algorithm =
      
      
      new CryptoFormatConstants.fromJson(json['algorithm'])
;
    timeout =
        json['timeout']
    ;
    digits =
        json['digits']
    ;
    secret =
        json['secret']
    ;
    tokens =
        (json['tokens'] as List).map((item) => item as String).toList()
    ;
    qrCode =
      
      
      new BasicDocument.fromJson(json['qrCode'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'protocolType': protocolType,
      'algorithm': algorithm,
      'timeout': timeout,
      'digits': digits,
      'secret': secret,
      'tokens': tokens,
      'qrCode': qrCode
     };
  }

  static List<OTPAuth> listFromJson(List<dynamic> json) {
    return json == null ? new List<OTPAuth>() : json.map((value) => new OTPAuth.fromJson(value)).toList();
  }

  static Map<String, OTPAuth> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OTPAuth>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OTPAuth.fromJson(value));
    }
    return map;
  }
}

