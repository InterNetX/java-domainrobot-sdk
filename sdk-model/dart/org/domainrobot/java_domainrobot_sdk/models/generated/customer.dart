part of swagger.api;

class Customer {
  
  int number = null;
  

  String client = null;
  

  int group = null;
  
/* The name of the customer. */
  String name = null;
  
/* The name of the organization. */
  String organization = null;
  
/* The value added tax number. */
  String vatNumber = null;
  
/* The gender of the person. */
  GenderConstants gender = null;
  
/* The title of the customer */
  String title = null;
  
/* The address of the customer */
  List<String> addressLines = [];
  
/* The city of the customer. */
  String city = null;
  
/* The state of the customer. */
  String state = null;
  
/* The country of the customer. */
  String country = null;
  
/* The phone number of the customer */
  String phone = null;
  
/* The fax number. */
  Phone fax = null;
  
/* The email addresses. */
  List<String> emails = [];
  
/* The billing recipients. */
  List<String> billingEmails = [];
  
/* The payment typ of the customer. */
  PaymentConstants payment = null;
  
/* The payment mode of the customer. */
  String paymentMode = null;
  
/* The payment currency of the customer. */
  Currency paymentCurrency = null;
  
/* The language to use for the invoice. */
  String invoiceLanguage = null;
  
/* The taxable flag of the customer. */
  bool taxable = null;
  
/* The customers minimal credit card data if payament was post with credit card. */
  Card card = null;
  
/* The customers contracts. */
  List<CustomerContract> contracts = [];
  
/* The billing users. */
  List<BasicUser> billingUsers = [];
  
/* The account of the customer in case of prepayment or if the customer has a credit limit */
  Account account = null;
  
/* The period after the post payment account will be cleared to zero */
  ClearAccountPeriod clearAccount = null;
  
/* The first name. */
  String fname = null;
  
/* The last name. */
  String lname = null;
  
/* The postal code of the city. */
  String pcode = null;
  
/* The customers sepa mandate if payament was post with sepa. */
  SEPAMandate sepa = null;
  
  Customer();

  @override
  String toString() {
    return 'Customer[number=$number, client=$client, group=$group, name=$name, organization=$organization, vatNumber=$vatNumber, gender=$gender, title=$title, addressLines=$addressLines, city=$city, state=$state, country=$country, phone=$phone, fax=$fax, emails=$emails, billingEmails=$billingEmails, payment=$payment, paymentMode=$paymentMode, paymentCurrency=$paymentCurrency, invoiceLanguage=$invoiceLanguage, taxable=$taxable, card=$card, contracts=$contracts, billingUsers=$billingUsers, account=$account, clearAccount=$clearAccount, fname=$fname, lname=$lname, pcode=$pcode, sepa=$sepa, ]';
  }

  Customer.fromJson(Map<String, dynamic> json) {
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
    name =
        json['name']
    ;
    organization =
        json['organization']
    ;
    vatNumber =
        json['vatNumber']
    ;
    gender =
      
      
      new GenderConstants.fromJson(json['gender'])
;
    title =
        json['title']
    ;
    addressLines =
        (json['addressLines'] as List).map((item) => item as String).toList()
    ;
    city =
        json['city']
    ;
    state =
        json['state']
    ;
    country =
        json['country']
    ;
    phone =
        json['phone']
    ;
    fax =
      
      
      new Phone.fromJson(json['fax'])
;
    emails =
        (json['emails'] as List).map((item) => item as String).toList()
    ;
    billingEmails =
        (json['billingEmails'] as List).map((item) => item as String).toList()
    ;
    payment =
      
      
      new PaymentConstants.fromJson(json['payment'])
;
    paymentMode =
        json['paymentMode']
    ;
    paymentCurrency =
      
      
      new Currency.fromJson(json['paymentCurrency'])
;
    invoiceLanguage =
        json['invoiceLanguage']
    ;
    taxable =
        json['taxable']
    ;
    card =
      
      
      new Card.fromJson(json['card'])
;
    contracts =
      CustomerContract.listFromJson(json['contracts'])
;
    billingUsers =
      BasicUser.listFromJson(json['billingUsers'])
;
    account =
      
      
      new Account.fromJson(json['account'])
;
    clearAccount =
      
      
      new ClearAccountPeriod.fromJson(json['clearAccount'])
;
    fname =
        json['fname']
    ;
    lname =
        json['lname']
    ;
    pcode =
        json['pcode']
    ;
    sepa =
      
      
      new SEPAMandate.fromJson(json['sepa'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'client': client,
      'group': group,
      'name': name,
      'organization': organization,
      'vatNumber': vatNumber,
      'gender': gender,
      'title': title,
      'addressLines': addressLines,
      'city': city,
      'state': state,
      'country': country,
      'phone': phone,
      'fax': fax,
      'emails': emails,
      'billingEmails': billingEmails,
      'payment': payment,
      'paymentMode': paymentMode,
      'paymentCurrency': paymentCurrency,
      'invoiceLanguage': invoiceLanguage,
      'taxable': taxable,
      'card': card,
      'contracts': contracts,
      'billingUsers': billingUsers,
      'account': account,
      'clearAccount': clearAccount,
      'fname': fname,
      'lname': lname,
      'pcode': pcode,
      'sepa': sepa
     };
  }

  static List<Customer> listFromJson(List<dynamic> json) {
    return json == null ? new List<Customer>() : json.map((value) => new Customer.fromJson(value)).toList();
  }

  static Map<String, Customer> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Customer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Customer.fromJson(value));
    }
    return map;
  }
}

