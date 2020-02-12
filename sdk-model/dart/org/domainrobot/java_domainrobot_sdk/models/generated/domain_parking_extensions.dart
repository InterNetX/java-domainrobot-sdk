part of swagger.api;

class DomainParkingExtensions {
  
  String parkingCategory = null;
  
/* The currency of the sale */
  String currency = null;
  
/* The parking */
  String domainLanguage = null;
  
/* Should the domain be listed for sale */
  bool forSale = null;
  
/* The keywords to use */
  String keyword = null;
  
/* The price to use */
  double price = null;
  
/* Is the price fix */
  bool fixedPrice = null;
  
/* The minimum of price */
  double minPrice = null;
  
  DomainParkingExtensions();

  @override
  String toString() {
    return 'DomainParkingExtensions[parkingCategory=$parkingCategory, currency=$currency, domainLanguage=$domainLanguage, forSale=$forSale, keyword=$keyword, price=$price, fixedPrice=$fixedPrice, minPrice=$minPrice, ]';
  }

  DomainParkingExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    parkingCategory =
        json['parkingCategory']
    ;
    currency =
        json['currency']
    ;
    domainLanguage =
        json['domainLanguage']
    ;
    forSale =
        json['forSale']
    ;
    keyword =
        json['keyword']
    ;
    price =
        json['price']
    ;
    fixedPrice =
        json['fixedPrice']
    ;
    minPrice =
        json['minPrice']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'parkingCategory': parkingCategory,
      'currency': currency,
      'domainLanguage': domainLanguage,
      'forSale': forSale,
      'keyword': keyword,
      'price': price,
      'fixedPrice': fixedPrice,
      'minPrice': minPrice
     };
  }

  static List<DomainParkingExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainParkingExtensions>() : json.map((value) => new DomainParkingExtensions.fromJson(value)).toList();
  }

  static Map<String, DomainParkingExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainParkingExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainParkingExtensions.fromJson(value));
    }
    return map;
  }
}

