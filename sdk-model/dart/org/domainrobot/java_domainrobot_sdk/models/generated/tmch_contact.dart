part of swagger.api;

class TmchContact {
  
  TmchMarkHolderConstants entitlement = null;
  

  String name = null;
  

  String organization = null;
  

  String street = null;
  

  String city = null;
  

  String postalCode = null;
  

  String state = null;
  

  String country = null;
  

  String email = null;
  

  String phone = null;
  

  String fax = null;
  
  TmchContact();

  @override
  String toString() {
    return 'TmchContact[entitlement=$entitlement, name=$name, organization=$organization, street=$street, city=$city, postalCode=$postalCode, state=$state, country=$country, email=$email, phone=$phone, fax=$fax, ]';
  }

  TmchContact.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    entitlement =
      
      
      new TmchMarkHolderConstants.fromJson(json['entitlement'])
;
    name =
        json['name']
    ;
    organization =
        json['organization']
    ;
    street =
        json['street']
    ;
    city =
        json['city']
    ;
    postalCode =
        json['postalCode']
    ;
    state =
        json['state']
    ;
    country =
        json['country']
    ;
    email =
        json['email']
    ;
    phone =
        json['phone']
    ;
    fax =
        json['fax']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'entitlement': entitlement,
      'name': name,
      'organization': organization,
      'street': street,
      'city': city,
      'postalCode': postalCode,
      'state': state,
      'country': country,
      'email': email,
      'phone': phone,
      'fax': fax
     };
  }

  static List<TmchContact> listFromJson(List<dynamic> json) {
    return json == null ? new List<TmchContact>() : json.map((value) => new TmchContact.fromJson(value)).toList();
  }

  static Map<String, TmchContact> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TmchContact>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TmchContact.fromJson(value));
    }
    return map;
  }
}

