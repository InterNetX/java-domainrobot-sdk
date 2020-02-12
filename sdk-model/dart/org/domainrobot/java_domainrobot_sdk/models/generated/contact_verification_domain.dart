part of swagger.api;

class ContactVerificationDomain {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* the domain of the Verification */
  String name = null;
  
/* the idn domain */
  String idn = null;
  
/* the status of the domain Verification */
  GenericStatusConstants status = null;
  
/* the deactivation of the domain Verification */
  DateTime deactivation = null;
  
  ContactVerificationDomain();

  @override
  String toString() {
    return 'ContactVerificationDomain[created=$created, updated=$updated, name=$name, idn=$idn, status=$status, deactivation=$deactivation, ]';
  }

  ContactVerificationDomain.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    name =
        json['name']
    ;
    idn =
        json['idn']
    ;
    status =
      
      
      new GenericStatusConstants.fromJson(json['status'])
;
    deactivation = json['deactivation'] == null ? null : DateTime.parse(json['deactivation']);
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'name': name,
      'idn': idn,
      'status': status,
      'deactivation': deactivation == null ? '' : deactivation.toUtc().toIso8601String()
     };
  }

  static List<ContactVerificationDomain> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactVerificationDomain>() : json.map((value) => new ContactVerificationDomain.fromJson(value)).toList();
  }

  static Map<String, ContactVerificationDomain> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactVerificationDomain>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactVerificationDomain.fromJson(value));
    }
    return map;
  }
}

