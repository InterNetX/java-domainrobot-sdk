part of swagger.api;

class Subscription {
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
  
/* The limits of the package. */
  List<BillingObjectLimit> limits = [];
  
/* The acls of the package */
  List<UserAcl> acls = [];
  
/* The name variant, e.g nodesecure */
  String variant = null;
  
/* The businessCase of the subscription, e.g. create */
  String businessCase = null;
  
  Subscription();

  @override
  String toString() {
    return 'Subscription[created=$created, updated=$updated, owner=$owner, updater=$updater, status=$status, object=$object, description=$description, period=$period, articleTypeLabel=$articleTypeLabel, articleLabel=$articleLabel, item=$item, limits=$limits, acls=$acls, variant=$variant, businessCase=$businessCase, ]';
  }

  Subscription.fromJson(Map<String, dynamic> json) {
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
    limits =
      BillingObjectLimit.listFromJson(json['limits'])
;
    acls =
      UserAcl.listFromJson(json['acls'])
;
    variant =
        json['variant']
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
      'limits': limits,
      'acls': acls,
      'variant': variant,
      'businessCase': businessCase
     };
  }

  static List<Subscription> listFromJson(List<dynamic> json) {
    return json == null ? new List<Subscription>() : json.map((value) => new Subscription.fromJson(value)).toList();
  }

  static Map<String, Subscription> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Subscription>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Subscription.fromJson(value));
    }
    return map;
  }
}

