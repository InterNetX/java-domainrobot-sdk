part of swagger.api;

class CertAuthentication {
  /* The domain name the authentication data belongs to. */
  String name = null;
  
/* The authentication method. */
  AuthMethodConstants method = null;
  
/* The dns entry for dns based authentication. */
  String dns = null;
  
/* The filename for file based authentication. */
  String fileName = null;
  
/* The content for file based authentication. */
  String fileContent = null;
  
/* The approver addresses for email based authentication. */
  List<String> approverEmails = [];
  
/* Activates automatic provisioning of the zone for dns based authentication. */
  bool provisioning = null;
  
  CertAuthentication();

  @override
  String toString() {
    return 'CertAuthentication[name=$name, method=$method, dns=$dns, fileName=$fileName, fileContent=$fileContent, approverEmails=$approverEmails, provisioning=$provisioning, ]';
  }

  CertAuthentication.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    method =
      
      
      new AuthMethodConstants.fromJson(json['method'])
;
    dns =
        json['dns']
    ;
    fileName =
        json['fileName']
    ;
    fileContent =
        json['fileContent']
    ;
    approverEmails =
        (json['approverEmails'] as List).map((item) => item as String).toList()
    ;
    provisioning =
        json['provisioning']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'method': method,
      'dns': dns,
      'fileName': fileName,
      'fileContent': fileContent,
      'approverEmails': approverEmails,
      'provisioning': provisioning
     };
  }

  static List<CertAuthentication> listFromJson(List<dynamic> json) {
    return json == null ? new List<CertAuthentication>() : json.map((value) => new CertAuthentication.fromJson(value)).toList();
  }

  static Map<String, CertAuthentication> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CertAuthentication>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CertAuthentication.fromJson(value));
    }
    return map;
  }
}

