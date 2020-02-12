part of swagger.api;

class EstimationData {
  /* The currency */
  Currency currency = null;
  
/* The amount */
  double amount = null;
  
  EstimationData();

  @override
  String toString() {
    return 'EstimationData[currency=$currency, amount=$amount, ]';
  }

  EstimationData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    currency =
      
      
      new Currency.fromJson(json['currency'])
;
    amount =
        json['amount']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'currency': currency,
      'amount': amount
     };
  }

  static List<EstimationData> listFromJson(List<dynamic> json) {
    return json == null ? new List<EstimationData>() : json.map((value) => new EstimationData.fromJson(value)).toList();
  }

  static Map<String, EstimationData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EstimationData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EstimationData.fromJson(value));
    }
    return map;
  }
}

