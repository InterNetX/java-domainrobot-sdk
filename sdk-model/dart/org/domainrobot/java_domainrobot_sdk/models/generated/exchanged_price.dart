part of swagger.api;

class ExchangedPrice {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updating user of the object. */
  BasicUser updater = null;
  
/* Lorem Ipum */
  double amount = null;
  
/* Lorem Ipum */
  PriceTypeConstants type = null;
  
/* Lorem Ipsum */
  String currency = null;
  
/* Lorem Ipum */
  PriorityConstants priority = null;
  
/* Lorem Ipum */
  Customer customer = null;
  
/* Lorem Ipum */
  TimePeriod period = null;
  
/* Lorem Ipum */
  bool discountable = null;
  
/* Lorem Ipum */
  int logId = null;
  
/* Lorem Ipum */
  int refund = null;
  
/* Lorem Ipum */
  List<PriceServiceEntity> priceConditions = [];
  
/* Lorem Ipum */
  String comment = null;
  
/* Lorem Ipum */
  ExchangedPrice normalPrice = null;
  
/* Lorem Ipum */
  DateTime valid = null;
  
/* Lorem Ipsum */
  double vatRate = null;
  
/* Lorem Ipsum */
  double vatAmount = null;
  
/* Lorem Ipsum */
  double rate = null;
  
  ExchangedPrice();

  @override
  String toString() {
    return 'ExchangedPrice[created=$created, updated=$updated, owner=$owner, updater=$updater, amount=$amount, type=$type, currency=$currency, priority=$priority, customer=$customer, period=$period, discountable=$discountable, logId=$logId, refund=$refund, priceConditions=$priceConditions, comment=$comment, normalPrice=$normalPrice, valid=$valid, vatRate=$vatRate, vatAmount=$vatAmount, rate=$rate, ]';
  }

  ExchangedPrice.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    amount =
        json['amount']
    ;
    type =
      
      
      new PriceTypeConstants.fromJson(json['type'])
;
    currency =
        json['currency']
    ;
    priority =
      
      
      new PriorityConstants.fromJson(json['priority'])
;
    customer =
      
      
      new Customer.fromJson(json['customer'])
;
    period =
      
      
      new TimePeriod.fromJson(json['period'])
;
    discountable =
        json['discountable']
    ;
    logId =
        json['logId']
    ;
    refund =
        json['refund']
    ;
    priceConditions =
      PriceServiceEntity.listFromJson(json['priceConditions'])
;
    comment =
        json['comment']
    ;
    normalPrice =
      
      
      new ExchangedPrice.fromJson(json['normalPrice'])
;
    valid = json['valid'] == null ? null : DateTime.parse(json['valid']);
    vatRate =
        json['vatRate']
    ;
    vatAmount =
        json['vatAmount']
    ;
    rate =
        json['rate']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'amount': amount,
      'type': type,
      'currency': currency,
      'priority': priority,
      'customer': customer,
      'period': period,
      'discountable': discountable,
      'logId': logId,
      'refund': refund,
      'priceConditions': priceConditions,
      'comment': comment,
      'normalPrice': normalPrice,
      'valid': valid == null ? '' : valid.toUtc().toIso8601String(),
      'vatRate': vatRate,
      'vatAmount': vatAmount,
      'rate': rate
     };
  }

  static List<ExchangedPrice> listFromJson(List<dynamic> json) {
    return json == null ? new List<ExchangedPrice>() : json.map((value) => new ExchangedPrice.fromJson(value)).toList();
  }

  static Map<String, ExchangedPrice> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ExchangedPrice>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ExchangedPrice.fromJson(value));
    }
    return map;
  }
}

