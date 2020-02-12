part of swagger.api;

class PeriodicBilling {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updating user of the object. */
  BasicUser updater = null;
  
/* The actual status of the entry, active means ok. */
  BillingStatus status = null;
  
/* The name of the subscription, e.g. the contract number */
  String object = null;
  
/* The human readable name of the subscription, e.g. the name of a package */
  String description = null;
  
/* The period used by the subscription, e.g. 1 month */
  TimePeriod period = null;
  
/* The article type label of the subscription, e.g. domain */
  String articleTypeLabel = null;
  
/* The article label of the subscription, e.g. backup_mx */
  String articleLabel = null;
  
/* The items of the subscription */
  List<PeriodicBilling> item = [];
  
/* The businessCase of the subscription, e.g. create */
  String businessCase = null;
  
  PeriodicBilling();

  @override
  String toString() {
    return 'PeriodicBilling[created=$created, updated=$updated, owner=$owner, updater=$updater, status=$status, object=$object, description=$description, period=$period, articleTypeLabel=$articleTypeLabel, articleLabel=$articleLabel, item=$item, businessCase=$businessCase, ]';
  }

  PeriodicBilling.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    status =
      
      
      new BillingStatus.fromJson(json['status'])
;
    object =
        json['object']
    ;
    description =
        json['description']
    ;
    period =
      
      
      new TimePeriod.fromJson(json['period'])
;
    articleTypeLabel =
        json['articleTypeLabel']
    ;
    articleLabel =
        json['articleLabel']
    ;
    item =
      PeriodicBilling.listFromJson(json['item'])
;
    businessCase =
        json['businessCase']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'status': status,
      'object': object,
      'description': description,
      'period': period,
      'articleTypeLabel': articleTypeLabel,
      'articleLabel': articleLabel,
      'item': item,
      'businessCase': businessCase
     };
  }

  static List<PeriodicBilling> listFromJson(List<dynamic> json) {
    return json == null ? new List<PeriodicBilling>() : json.map((value) => new PeriodicBilling.fromJson(value)).toList();
  }

  static Map<String, PeriodicBilling> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PeriodicBilling>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PeriodicBilling.fromJson(value));
    }
    return map;
  }
}

