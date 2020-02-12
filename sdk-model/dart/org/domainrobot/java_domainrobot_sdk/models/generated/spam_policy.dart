part of swagger.api;

class SpamPolicy {
  
  bool modifySubject = null;
  

  double tagHeader = null;
   // range from -999.9 to 999.9//

  double spam = null;
   // range from -999.9 to 999.9//

  double kill = null;
   // range from -999.9 to 999.9//

  int quarantineDigestInterval = null;
   // range from 1440 to //
  SpamPolicy();

  @override
  String toString() {
    return 'SpamPolicy[modifySubject=$modifySubject, tagHeader=$tagHeader, spam=$spam, kill=$kill, quarantineDigestInterval=$quarantineDigestInterval, ]';
  }

  SpamPolicy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    modifySubject =
        json['modifySubject']
    ;
    tagHeader =
        json['tagHeader']
    ;
    spam =
        json['spam']
    ;
    kill =
        json['kill']
    ;
    quarantineDigestInterval =
        json['quarantineDigestInterval']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'modifySubject': modifySubject,
      'tagHeader': tagHeader,
      'spam': spam,
      'kill': kill,
      'quarantineDigestInterval': quarantineDigestInterval
     };
  }

  static List<SpamPolicy> listFromJson(List<dynamic> json) {
    return json == null ? new List<SpamPolicy>() : json.map((value) => new SpamPolicy.fromJson(value)).toList();
  }

  static Map<String, SpamPolicy> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SpamPolicy>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SpamPolicy.fromJson(value));
    }
    return map;
  }
}

