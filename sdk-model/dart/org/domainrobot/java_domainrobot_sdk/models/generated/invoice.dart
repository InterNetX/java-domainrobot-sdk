part of swagger.api;

class Invoice {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updater of the object. */
  BasicUser updater = null;
  
/* Lorem Ipsum */
  int id = null;
  
/* Lorem Ipsum */
  String number = null;
  
/* Lorem Ipum */
  Customer customer = null;
  
/* Lorem Ipsum */
  PaymentConstants payment = null;
  
/* Lorem Ipsum */
  String paymentMode = null;
  
/* Lorem Ipsum */
  String paymentTransaction = null;
  
/* The sub type of the invoice, e.g. domain invoice or server invoice */
  String subType = null;
  
/* Lorem Ipsum */
  String sepaMandateReference = null;
  
/* Lorem Ipsum */
  DateTime sepaMandateCollection = null;
  
/* Lorem Ipsum */
  double amount = null;
  
/* Lorem Ipsum */
  double vatAmount = null;
  
/* Lorem Ipsum */
  InvoiceStatusConstants status = null;
  
/* Lorem Ipsum */
  AccountingDocumentTypeConstants type = null;
  
/* Lorem Ipsum */
  bool failed = null;
  
/* Lorem Ipsum */
  String currency = null;
  
/* Lorem Ipsum */
  DateTime paid = null;
  
/* Lorem Ipsum */
  Document document = null;
  
/* Lorem Ipsum */
  String comment = null;
  
  Invoice();

  @override
  String toString() {
    return 'Invoice[created=$created, updated=$updated, owner=$owner, updater=$updater, id=$id, number=$number, customer=$customer, payment=$payment, paymentMode=$paymentMode, paymentTransaction=$paymentTransaction, subType=$subType, sepaMandateReference=$sepaMandateReference, sepaMandateCollection=$sepaMandateCollection, amount=$amount, vatAmount=$vatAmount, status=$status, type=$type, failed=$failed, currency=$currency, paid=$paid, document=$document, comment=$comment, ]';
  }

  Invoice.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    id =
        json['id']
    ;
    number =
        json['number']
    ;
    customer =
      
      
      new Customer.fromJson(json['customer'])
;
    payment =
      
      
      new PaymentConstants.fromJson(json['payment'])
;
    paymentMode =
        json['paymentMode']
    ;
    paymentTransaction =
        json['paymentTransaction']
    ;
    subType =
        json['subType']
    ;
    sepaMandateReference =
        json['sepaMandateReference']
    ;
    sepaMandateCollection = json['sepaMandateCollection'] == null ? null : DateTime.parse(json['sepaMandateCollection']);
    amount =
        json['amount']
    ;
    vatAmount =
        json['vatAmount']
    ;
    status =
      
      
      new InvoiceStatusConstants.fromJson(json['status'])
;
    type =
      
      
      new AccountingDocumentTypeConstants.fromJson(json['type'])
;
    failed =
        json['failed']
    ;
    currency =
        json['currency']
    ;
    paid = json['paid'] == null ? null : DateTime.parse(json['paid']);
    document =
      
      
      new Document.fromJson(json['document'])
;
    comment =
        json['comment']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'id': id,
      'number': number,
      'customer': customer,
      'payment': payment,
      'paymentMode': paymentMode,
      'paymentTransaction': paymentTransaction,
      'subType': subType,
      'sepaMandateReference': sepaMandateReference,
      'sepaMandateCollection': sepaMandateCollection == null ? '' : sepaMandateCollection.toUtc().toIso8601String(),
      'amount': amount,
      'vatAmount': vatAmount,
      'status': status,
      'type': type,
      'failed': failed,
      'currency': currency,
      'paid': paid == null ? '' : paid.toUtc().toIso8601String(),
      'document': document,
      'comment': comment
     };
  }

  static List<Invoice> listFromJson(List<dynamic> json) {
    return json == null ? new List<Invoice>() : json.map((value) => new Invoice.fromJson(value)).toList();
  }

  static Map<String, Invoice> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Invoice>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Invoice.fromJson(value));
    }
    return map;
  }
}

