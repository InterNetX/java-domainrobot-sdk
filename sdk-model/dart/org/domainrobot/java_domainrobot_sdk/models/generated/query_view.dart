part of swagger.api;

class QueryView {
  
  int limit = null;
  

  int offset = null;
  

  bool children = null;
  

  DateTime from = null;
  

  DateTime to = null;
  
  QueryView();

  @override
  String toString() {
    return 'QueryView[limit=$limit, offset=$offset, children=$children, from=$from, to=$to, ]';
  }

  QueryView.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    limit =
        json['limit']
    ;
    offset =
        json['offset']
    ;
    children =
        json['children']
    ;
    from = json['from'] == null ? null : DateTime.parse(json['from']);
    to = json['to'] == null ? null : DateTime.parse(json['to']);
  }

  Map<String, dynamic> toJson() {
    return {
      'limit': limit,
      'offset': offset,
      'children': children,
      'from': from == null ? '' : from.toUtc().toIso8601String(),
      'to': to == null ? '' : to.toUtc().toIso8601String()
     };
  }

  static List<QueryView> listFromJson(List<dynamic> json) {
    return json == null ? new List<QueryView>() : json.map((value) => new QueryView.fromJson(value)).toList();
  }

  static Map<String, QueryView> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QueryView>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QueryView.fromJson(value));
    }
    return map;
  }
}

