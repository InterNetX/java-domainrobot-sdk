part of swagger.api;

class AddressClaim {
  /* Full mailing address, formatted for display or use on a mailing label. This field MAY contain multiple lines, separated by newlines. Newlines can be represented either as a carriage return/line feed pair (\"\\r\\n\") or as a single line feed character (\"\\n\") */
  String formatted = null;
  
/* Full street address component, which MAY include house number, street name, Post Office Box, and multi-line extended street address information. This field MAY contain multiple lines, separated by newlines. Newlines can be represented either as a carriage return/line feed pair (\"\\r\\n\") or as a single line feed character (\"\\n\") */
  String streetAddress = null;
  
/* City or locality component */
  String locality = null;
  
/* State, province, prefecture, or region component */
  String region = null;
  
/* Zip code or postal code component */
  String postalCode = null;
  
/* Country name component */
  String country = null;
  
  AddressClaim();

  @override
  String toString() {
    return 'AddressClaim[formatted=$formatted, streetAddress=$streetAddress, locality=$locality, region=$region, postalCode=$postalCode, country=$country, ]';
  }

  AddressClaim.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    formatted =
        json['formatted']
    ;
    streetAddress =
        json['street_address']
    ;
    locality =
        json['locality']
    ;
    region =
        json['region']
    ;
    postalCode =
        json['postal_code']
    ;
    country =
        json['country']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'formatted': formatted,
      'street_address': streetAddress,
      'locality': locality,
      'region': region,
      'postal_code': postalCode,
      'country': country
     };
  }

  static List<AddressClaim> listFromJson(List<dynamic> json) {
    return json == null ? new List<AddressClaim>() : json.map((value) => new AddressClaim.fromJson(value)).toList();
  }

  static Map<String, AddressClaim> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AddressClaim>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AddressClaim.fromJson(value));
    }
    return map;
  }
}

