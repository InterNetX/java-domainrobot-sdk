part of swagger.api;

class PriceData {
  /* The subject products */
  List<SimplePrice> prices = [];
  
  PriceData();

  @override
  String toString() {
    return 'PriceData[prices=$prices, ]';
  }

  PriceData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    prices =
      SimplePrice.listFromJson(json['prices'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'prices': prices
     };
  }

  static List<PriceData> listFromJson(List<dynamic> json) {
    return json == null ? new List<PriceData>() : json.map((value) => new PriceData.fromJson(value)).toList();
  }

  static Map<String, PriceData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PriceData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PriceData.fromJson(value));
    }
    return map;
  }
}

