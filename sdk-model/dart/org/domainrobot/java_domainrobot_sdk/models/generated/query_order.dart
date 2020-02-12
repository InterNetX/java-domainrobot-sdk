part of swagger.api;

class QueryOrder {
  
  String key = null;
  

  List<String> ins = [];
  

  OrderType type = null;
  
  QueryOrder();

  @override
  String toString() {
    return 'QueryOrder[key=$key, ins=$ins, type=$type, ]';
  }

  QueryOrder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    key =
        json['key']
    ;
    ins =
        (json['ins'] as List).map((item) => item as String).toList()
    ;
    type =
      
      
      new OrderType.fromJson(json['type'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'ins': ins,
      'type': type
     };
  }

  static List<QueryOrder> listFromJson(List<dynamic> json) {
    return json == null ? new List<QueryOrder>() : json.map((value) => new QueryOrder.fromJson(value)).toList();
  }

  static Map<String, QueryOrder> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QueryOrder>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QueryOrder.fromJson(value));
    }
    return map;
  }
}

