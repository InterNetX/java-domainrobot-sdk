part of swagger.api;

class Query {
  
  List<QueryFilter> filters = [];
  

  QueryView view = null;
  

  List<QueryOrder> orders = [];
  
  Query();

  @override
  String toString() {
    return 'Query[filters=$filters, view=$view, orders=$orders, ]';
  }

  Query.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    filters =
      QueryFilter.listFromJson(json['filters'])
;
    view =
      
      
      new QueryView.fromJson(json['view'])
;
    orders =
      QueryOrder.listFromJson(json['orders'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'filters': filters,
      'view': view,
      'orders': orders
     };
  }

  static List<Query> listFromJson(List<dynamic> json) {
    return json == null ? new List<Query>() : json.map((value) => new Query.fromJson(value)).toList();
  }

  static Map<String, Query> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Query>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Query.fromJson(value));
    }
    return map;
  }
}

