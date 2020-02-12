part of swagger.api;

class QueryFilter {
  
  String key = null;
  

  String value = null;
  

  ModelOperator operator_ = null;
  

  ConditionType link = null;
  

  List<QueryFilter> filters = [];
  
  QueryFilter();

  @override
  String toString() {
    return 'QueryFilter[key=$key, value=$value, operator_=$operator_, link=$link, filters=$filters, ]';
  }

  QueryFilter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    key =
        json['key']
    ;
    value =
        json['value']
    ;
    operator_ =
      
      
      new ModelOperator.fromJson(json['operator'])
;
    link =
      
      
      new ConditionType.fromJson(json['link'])
;
    filters =
      QueryFilter.listFromJson(json['filters'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'value': value,
      'operator': operator_,
      'link': link,
      'filters': filters
     };
  }

  static List<QueryFilter> listFromJson(List<dynamic> json) {
    return json == null ? new List<QueryFilter>() : json.map((value) => new QueryFilter.fromJson(value)).toList();
  }

  static Map<String, QueryFilter> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QueryFilter>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QueryFilter.fromJson(value));
    }
    return map;
  }
}

