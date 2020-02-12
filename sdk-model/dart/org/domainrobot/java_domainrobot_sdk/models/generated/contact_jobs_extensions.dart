part of swagger.api;

class ContactJobsExtensions {
  /* Contact is the administrative contact with the permission to act as an independent agent / recruiter on behalf of the listed registrant. */
  bool adminType = null;
  
/* Title of the domain contact in the organization. */
  String contactTitle = null;
  
/* Choose whether the contact is is a member of the Human Resource Organization */
  bool hrMember = null;
  
/* The Industry class. */
  int industryClass = null;
  
/* The Website. */
  String website = null;
  
  ContactJobsExtensions();

  @override
  String toString() {
    return 'ContactJobsExtensions[adminType=$adminType, contactTitle=$contactTitle, hrMember=$hrMember, industryClass=$industryClass, website=$website, ]';
  }

  ContactJobsExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    adminType =
        json['adminType']
    ;
    contactTitle =
        json['contactTitle']
    ;
    hrMember =
        json['hrMember']
    ;
    industryClass =
        json['industryClass']
    ;
    website =
        json['website']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'adminType': adminType,
      'contactTitle': contactTitle,
      'hrMember': hrMember,
      'industryClass': industryClass,
      'website': website
     };
  }

  static List<ContactJobsExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactJobsExtensions>() : json.map((value) => new ContactJobsExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactJobsExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactJobsExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactJobsExtensions.fromJson(value));
    }
    return map;
  }
}

