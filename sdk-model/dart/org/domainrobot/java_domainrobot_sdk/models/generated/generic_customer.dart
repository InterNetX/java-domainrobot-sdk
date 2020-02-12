part of swagger.api;

class GenericCustomer {
  
  int number = null;
  

  String client = null;
  

  int group = null;
  
  GenericCustomer();

  @override
  String toString() {
    return 'GenericCustomer[number=$number, client=$client, group=$group, ]';
  }

  GenericCustomer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    number =
        json['number']
    ;
    client =
        json['client']
    ;
    group =
        json['group']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'client': client,
      'group': group
     };
  }

  static List<GenericCustomer> listFromJson(List<dynamic> json) {
    return json == null ? new List<GenericCustomer>() : json.map((value) => new GenericCustomer.fromJson(value)).toList();
  }

  static Map<String, GenericCustomer> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GenericCustomer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GenericCustomer.fromJson(value));
    }
    return map;
  }
}

