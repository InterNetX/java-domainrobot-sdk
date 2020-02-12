part of swagger.api;

class Card {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The credit card vendor */
  CreditCardVendor type = null;
  
/* The actual status of the credit card */
  CardStatus status = null;
  
/* The valid from date */
  DateTime validFrom = null;
  
/* The valid to date */
  DateTime validTo = null;
  
  Card();

  @override
  String toString() {
    return 'Card[created=$created, updated=$updated, type=$type, status=$status, validFrom=$validFrom, validTo=$validTo, ]';
  }

  Card.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    type =
      
      
      new CreditCardVendor.fromJson(json['type'])
;
    status =
      
      
      new CardStatus.fromJson(json['status'])
;
    validFrom = json['validFrom'] == null ? null : DateTime.parse(json['validFrom']);
    validTo = json['validTo'] == null ? null : DateTime.parse(json['validTo']);
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'type': type,
      'status': status,
      'validFrom': validFrom == null ? '' : validFrom.toUtc().toIso8601String(),
      'validTo': validTo == null ? '' : validTo.toUtc().toIso8601String()
     };
  }

  static List<Card> listFromJson(List<dynamic> json) {
    return json == null ? new List<Card>() : json.map((value) => new Card.fromJson(value)).toList();
  }

  static Map<String, Card> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Card>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Card.fromJson(value));
    }
    return map;
  }
}

