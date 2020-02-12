part of swagger.api;

class ContactXxxExtensions {
  /* Membership ID (token) for the .XXX community. */
  String membershipID = null;
  
/* XXX community membership available or not. */
  bool nonResolverDomain = null;
  
  ContactXxxExtensions();

  @override
  String toString() {
    return 'ContactXxxExtensions[membershipID=$membershipID, nonResolverDomain=$nonResolverDomain, ]';
  }

  ContactXxxExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    membershipID =
        json['membershipID']
    ;
    nonResolverDomain =
        json['nonResolverDomain']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'membershipID': membershipID,
      'nonResolverDomain': nonResolverDomain
     };
  }

  static List<ContactXxxExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactXxxExtensions>() : json.map((value) => new ContactXxxExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactXxxExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactXxxExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactXxxExtensions.fromJson(value));
    }
    return map;
  }
}

