part of swagger.api;

class ContactLuxeExtensions {
  /* The .luxe wallet address */
  String walletAddress = null;
  
  ContactLuxeExtensions();

  @override
  String toString() {
    return 'ContactLuxeExtensions[walletAddress=$walletAddress, ]';
  }

  ContactLuxeExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    walletAddress =
        json['walletAddress']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'walletAddress': walletAddress
     };
  }

  static List<ContactLuxeExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactLuxeExtensions>() : json.map((value) => new ContactLuxeExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactLuxeExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactLuxeExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactLuxeExtensions.fromJson(value));
    }
    return map;
  }
}

