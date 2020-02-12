part of swagger.api;

class SslContact {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The first name of the contact */
  String fname = null;
  
/* The last name of the contact */
  String lname = null;
  
/* The phone number of the contact */
  String phone = null;
  
/* The fax number of the contact */
  String fax = null;
  
/* The email of the contact */
  String email = null;
  
/* The title of the contact */
  String title = null;
  
/* The name of the organization */
  String organization = null;
  
/* The address of the contact. */
  List<String> address = [];
  
/* The pcode of the contact */
  String pcode = null;
  
/* The city of the contact */
  String city = null;
  
/* The country of the contact */
  String country = null;
  
/* The local country state of the contact */
  String state = null;
  
/* The owner of the object */
  BasicUser owner = null;
  
/* The updating using of the object */
  BasicUser updater = null;
  
/* Unique identifier of the object */
  int id = null;
  
  SslContact();

  @override
  String toString() {
    return 'SslContact[created=$created, updated=$updated, fname=$fname, lname=$lname, phone=$phone, fax=$fax, email=$email, title=$title, organization=$organization, address=$address, pcode=$pcode, city=$city, country=$country, state=$state, owner=$owner, updater=$updater, id=$id, ]';
  }

  SslContact.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    fname =
        json['fname']
    ;
    lname =
        json['lname']
    ;
    phone =
        json['phone']
    ;
    fax =
        json['fax']
    ;
    email =
        json['email']
    ;
    title =
        json['title']
    ;
    organization =
        json['organization']
    ;
    address =
        (json['address'] as List).map((item) => item as String).toList()
    ;
    pcode =
        json['pcode']
    ;
    city =
        json['city']
    ;
    country =
        json['country']
    ;
    state =
        json['state']
    ;
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'fname': fname,
      'lname': lname,
      'phone': phone,
      'fax': fax,
      'email': email,
      'title': title,
      'organization': organization,
      'address': address,
      'pcode': pcode,
      'city': city,
      'country': country,
      'state': state,
      'owner': owner,
      'updater': updater,
      'id': id
     };
  }

  static List<SslContact> listFromJson(List<dynamic> json) {
    return json == null ? new List<SslContact>() : json.map((value) => new SslContact.fromJson(value)).toList();
  }

  static Map<String, SslContact> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SslContact>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SslContact.fromJson(value));
    }
    return map;
  }
}

