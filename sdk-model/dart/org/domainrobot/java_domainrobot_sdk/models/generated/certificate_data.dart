part of swagger.api;

class CertificateData {
  /* The plain csr. */
  String plain = null;
  
/* The common name. */
  String name = null;
  
/* The subject alternative names, listed in the csr. */
  List<String> san = [];
  
/* The certificate history. */
  List<CertificateHistory> histories = [];
  
/* The size of the csr key. */
  int keySize = null;
  
/* The country code defined in the csr. */
  String countryCode = null;
  
/* The password defined in the csr. */
  String challengePassword = null;
  
/* The state defined in the csr. */
  String state = null;
  
/* The city defined in the csr. */
  String city = null;
  
/* The organization defined in the csr. */
  String organization = null;
  
/* The organization unit defined in the csr. */
  String organizationUnit = null;
  
/* The email defined in the csr. */
  String email = null;
  
/* The ssl product. */
  String product = null;
  
/* The authentication data. */
  List<CertAuthentication> authentication = [];
  
/* The csr algorithm. */
  CsrHashAlgorithmConstants algorithm = null;
  
/* The signature hash algorithm. */
  SignatureHashAlgorithmConstants signatureHashAlgorithm = null;
  
/* The idn version of the common name. */
  String idn = null;
  
/* Activates the caa record check. */
  bool checkCaa = null;
  
/* Describes the business case (CREATE, RENEW, REISSUE, DELETE) for which preparation is to be performed. */
  String businessCase = null;
  
  CertificateData();

  @override
  String toString() {
    return 'CertificateData[plain=$plain, name=$name, san=$san, histories=$histories, keySize=$keySize, countryCode=$countryCode, challengePassword=$challengePassword, state=$state, city=$city, organization=$organization, organizationUnit=$organizationUnit, email=$email, product=$product, authentication=$authentication, algorithm=$algorithm, signatureHashAlgorithm=$signatureHashAlgorithm, idn=$idn, checkCaa=$checkCaa, businessCase=$businessCase, ]';
  }

  CertificateData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    plain =
        json['plain']
    ;
    name =
        json['name']
    ;
    san =
        (json['san'] as List).map((item) => item as String).toList()
    ;
    histories =
      CertificateHistory.listFromJson(json['histories'])
;
    keySize =
        json['keySize']
    ;
    countryCode =
        json['countryCode']
    ;
    challengePassword =
        json['challengePassword']
    ;
    state =
        json['state']
    ;
    city =
        json['city']
    ;
    organization =
        json['organization']
    ;
    organizationUnit =
        json['organizationUnit']
    ;
    email =
        json['email']
    ;
    product =
        json['product']
    ;
    authentication =
      CertAuthentication.listFromJson(json['authentication'])
;
    algorithm =
      
      
      new CsrHashAlgorithmConstants.fromJson(json['algorithm'])
;
    signatureHashAlgorithm =
      
      
      new SignatureHashAlgorithmConstants.fromJson(json['signatureHashAlgorithm'])
;
    idn =
        json['idn']
    ;
    checkCaa =
        json['checkCaa']
    ;
    businessCase =
        json['businessCase']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'plain': plain,
      'name': name,
      'san': san,
      'histories': histories,
      'keySize': keySize,
      'countryCode': countryCode,
      'challengePassword': challengePassword,
      'state': state,
      'city': city,
      'organization': organization,
      'organizationUnit': organizationUnit,
      'email': email,
      'product': product,
      'authentication': authentication,
      'algorithm': algorithm,
      'signatureHashAlgorithm': signatureHashAlgorithm,
      'idn': idn,
      'checkCaa': checkCaa,
      'businessCase': businessCase
     };
  }

  static List<CertificateData> listFromJson(List<dynamic> json) {
    return json == null ? new List<CertificateData>() : json.map((value) => new CertificateData.fromJson(value)).toList();
  }

  static Map<String, CertificateData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CertificateData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CertificateData.fromJson(value));
    }
    return map;
  }
}

