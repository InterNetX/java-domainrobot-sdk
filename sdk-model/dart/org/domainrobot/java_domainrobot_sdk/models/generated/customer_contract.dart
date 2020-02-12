part of swagger.api;

class CustomerContract {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The contract. */
  GenericLabelEntity contract = null;
  
/* The notices. */
  String notice = null;
  
/* The ticketing number if available. */
  String ticketNumber = null;
  
  CustomerContract();

  @override
  String toString() {
    return 'CustomerContract[created=$created, updated=$updated, contract=$contract, notice=$notice, ticketNumber=$ticketNumber, ]';
  }

  CustomerContract.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    contract =
      
      
      new GenericLabelEntity.fromJson(json['contract'])
;
    notice =
        json['notice']
    ;
    ticketNumber =
        json['ticketNumber']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'contract': contract,
      'notice': notice,
      'ticketNumber': ticketNumber
     };
  }

  static List<CustomerContract> listFromJson(List<dynamic> json) {
    return json == null ? new List<CustomerContract>() : json.map((value) => new CustomerContract.fromJson(value)).toList();
  }

  static Map<String, CustomerContract> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CustomerContract>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CustomerContract.fromJson(value));
    }
    return map;
  }
}

