part of swagger.api;

class Contact {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The unique identifier of the contact */
  int id = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updating user of the object. */
  BasicUser updater = null;
  
/* The unique alias of the contact */
  String alias = null;
  
/* The type of the contact */
  ContactTypeConstants type = null;
  
/* The name of the organization */
  String organization = null;
  
/* The title of the contact */
  String title = null;
  
/* The city of the contact */
  String city = null;
  
/* The country of the contact */
  String country = null;
  
/* The local country state of the contact */
  String state = null;
  
/* The email of the contact */
  String email = null;
  
/* The protection of the contact */
  ContactProtectionConstants protection = null;
  
/* The sip of the contact */
  String sip = null;
  
/* The remarks of the contact */
  List<String> remarks = [];
  
/* The nic references of the contact */
  bool domainsafe = null;
  
/* ??? */
  bool confirmOwnerConsent = null;
  
/* The comment for the contact */
  String comment = null;
  
/* The verification status of the contact */
  GenericStatusConstants verification = null;
  
/* The first name of the contact */
  String fname = null;
  
/* The last name of the contact */
  String lname = null;
  
/* The address of the contact. */
  List<String> address = [];
  
/* The pcode of the contact */
  String pcode = null;
  
/* The phone number of the contact */
  String phone = null;
  
/* The fax number of the contact */
  String fax = null;
  
/* The nic references of the contact */
  List<ContactReference> nicRef = [];
  
/* The contact extensions. */
  ContactExtensions extensions = null;
  
  Contact();

  @override
  String toString() {
    return 'Contact[created=$created, updated=$updated, id=$id, owner=$owner, updater=$updater, alias=$alias, type=$type, organization=$organization, title=$title, city=$city, country=$country, state=$state, email=$email, protection=$protection, sip=$sip, remarks=$remarks, domainsafe=$domainsafe, confirmOwnerConsent=$confirmOwnerConsent, comment=$comment, verification=$verification, fname=$fname, lname=$lname, address=$address, pcode=$pcode, phone=$phone, fax=$fax, nicRef=$nicRef, extensions=$extensions, ]';
  }

  Contact.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    id =
        json['id']
    ;
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    alias =
        json['alias']
    ;
    type =
      
      
      new ContactTypeConstants.fromJson(json['type'])
;
    organization =
        json['organization']
    ;
    title =
        json['title']
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
    email =
        json['email']
    ;
    protection =
      
      
      new ContactProtectionConstants.fromJson(json['protection'])
;
    sip =
        json['sip']
    ;
    remarks =
        (json['remarks'] as List).map((item) => item as String).toList()
    ;
    domainsafe =
        json['domainsafe']
    ;
    confirmOwnerConsent =
        json['confirmOwnerConsent']
    ;
    comment =
        json['comment']
    ;
    verification =
      
      
      new GenericStatusConstants.fromJson(json['verification'])
;
    fname =
        json['fname']
    ;
    lname =
        json['lname']
    ;
    address =
        (json['address'] as List).map((item) => item as String).toList()
    ;
    pcode =
        json['pcode']
    ;
    phone =
        json['phone']
    ;
    fax =
        json['fax']
    ;
    nicRef =
      ContactReference.listFromJson(json['nicRef'])
;
    extensions =
      
      
      new ContactExtensions.fromJson(json['extensions'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'id': id,
      'owner': owner,
      'updater': updater,
      'alias': alias,
      'type': type,
      'organization': organization,
      'title': title,
      'city': city,
      'country': country,
      'state': state,
      'email': email,
      'protection': protection,
      'sip': sip,
      'remarks': remarks,
      'domainsafe': domainsafe,
      'confirmOwnerConsent': confirmOwnerConsent,
      'comment': comment,
      'verification': verification,
      'fname': fname,
      'lname': lname,
      'address': address,
      'pcode': pcode,
      'phone': phone,
      'fax': fax,
      'nicRef': nicRef,
      'extensions': extensions
     };
  }

  static List<Contact> listFromJson(List<dynamic> json) {
    return json == null ? new List<Contact>() : json.map((value) => new Contact.fromJson(value)).toList();
  }

  static Map<String, Contact> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Contact>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Contact.fromJson(value));
    }
    return map;
  }
}

