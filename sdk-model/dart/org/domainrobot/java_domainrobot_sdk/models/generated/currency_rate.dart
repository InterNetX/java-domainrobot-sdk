part of swagger.api;

class CurrencyRate {
  /* The currency of the exchange */
  String currency = null;
  
/* the rate of the exchange */
  double rate = null;
  
  CurrencyRate();

  @override
  String toString() {
    return 'CurrencyRate[currency=$currency, rate=$rate, ]';
  }

  CurrencyRate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    currency =
        json['currency']
    ;
    rate =
        json['rate']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'currency': currency,
      'rate': rate
     };
  }

  static List<CurrencyRate> listFromJson(List<dynamic> json) {
    return json == null ? new List<CurrencyRate>() : json.map((value) => new CurrencyRate.fromJson(value)).toList();
  }

  static Map<String, CurrencyRate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CurrencyRate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CurrencyRate.fromJson(value));
    }
    return map;
  }
}

