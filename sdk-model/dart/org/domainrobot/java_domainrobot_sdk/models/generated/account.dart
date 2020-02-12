part of swagger.api;

class Account {
  /* The customer itself */
  GenericCustomer customer = null;
  
/* The real account balance */
  double currentAccountBalance = null;
  
/* The current total, the amount of all finished and unfinished transactions */
  double runningTotal = null;
  
/* The credit limit of the account. */
  double creditLimit = null;
  
/* The currency of the account */
  String currency = null;
  
/* The minimum running total amount if a notification should be send */
  double minRunningTotalNotification = null;
  
/* The recipient of the notification limit email */
  String minRunningTotalNotificationEmail = null;
  
/* The date of the acccount creation */
  DateTime created = null;
  
/* The date of the las update. */
  DateTime updated = null;
  
/* The selected exchange for the account */
  CurrencyRate view = null;
  
  Account();

  @override
  String toString() {
    return 'Account[customer=$customer, currentAccountBalance=$currentAccountBalance, runningTotal=$runningTotal, creditLimit=$creditLimit, currency=$currency, minRunningTotalNotification=$minRunningTotalNotification, minRunningTotalNotificationEmail=$minRunningTotalNotificationEmail, created=$created, updated=$updated, view=$view, ]';
  }

  Account.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    customer =
      
      
      new GenericCustomer.fromJson(json['customer'])
;
    currentAccountBalance =
        json['currentAccountBalance']
    ;
    runningTotal =
        json['runningTotal']
    ;
    creditLimit =
        json['creditLimit']
    ;
    currency =
        json['currency']
    ;
    minRunningTotalNotification =
        json['minRunningTotalNotification']
    ;
    minRunningTotalNotificationEmail =
        json['minRunningTotalNotificationEmail']
    ;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    view =
      
      
      new CurrencyRate.fromJson(json['view'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'customer': customer,
      'currentAccountBalance': currentAccountBalance,
      'runningTotal': runningTotal,
      'creditLimit': creditLimit,
      'currency': currency,
      'minRunningTotalNotification': minRunningTotalNotification,
      'minRunningTotalNotificationEmail': minRunningTotalNotificationEmail,
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'view': view
     };
  }

  static List<Account> listFromJson(List<dynamic> json) {
    return json == null ? new List<Account>() : json.map((value) => new Account.fromJson(value)).toList();
  }

  static Map<String, Account> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Account>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Account.fromJson(value));
    }
    return map;
  }
}

