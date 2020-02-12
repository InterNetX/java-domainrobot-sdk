part of swagger.api;

class SimplePrice {
  /* The gross amount of the calculation */
  double amount = null;
  
/* The net amount of the calculation */
  double netAmount = null;
  
/* The calculated vat amount */
  double vatAmount = null;
  
/* The billing currency */
  String currency = null;
  
/* The price. Note the currency can be differ from the billing currency */
  ExchangedPrice price = null;
  
/* The business case */
  String businessCase = null;
  
/* The period for the price calculation */
  TimePeriod period = null;
  
/* Custom values,such as price class */
  List<Custom> customs = [];
  
/* The currency rate for the view currency */
  CurrencyRate view = null;
  
  SimplePrice();

  @override
  String toString() {
    return 'SimplePrice[amount=$amount, netAmount=$netAmount, vatAmount=$vatAmount, currency=$currency, price=$price, businessCase=$businessCase, period=$period, customs=$customs, view=$view, ]';
  }

  SimplePrice.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    amount =
        json['amount']
    ;
    netAmount =
        json['netAmount']
    ;
    vatAmount =
        json['vatAmount']
    ;
    currency =
        json['currency']
    ;
    price =
      
      
      new ExchangedPrice.fromJson(json['price'])
;
    businessCase =
        json['businessCase']
    ;
    period =
      
      
      new TimePeriod.fromJson(json['period'])
;
    customs =
      Custom.listFromJson(json['customs'])
;
    view =
      
      
      new CurrencyRate.fromJson(json['view'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'netAmount': netAmount,
      'vatAmount': vatAmount,
      'currency': currency,
      'price': price,
      'businessCase': businessCase,
      'period': period,
      'customs': customs,
      'view': view
     };
  }

  static List<SimplePrice> listFromJson(List<dynamic> json) {
    return json == null ? new List<SimplePrice>() : json.map((value) => new SimplePrice.fromJson(value)).toList();
  }

  static Map<String, SimplePrice> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SimplePrice>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SimplePrice.fromJson(value));
    }
    return map;
  }
}

