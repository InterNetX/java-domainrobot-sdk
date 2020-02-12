part of swagger.api;

class Certificate {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updating user of the object. */
  BasicUser updater = null;
  
/* The certificate extensions for comodo. */
  ExtendedValidationExtension extension = null;
  
/* The ID of the certificate */
  int id = null;
  
/* The order number of the related request */
  String partnerOrderId = null;
  
/* The unique certificate order number */
  String orderId = null;
  
/* The administrative contact */
  SslContact adminContact = null;
  
/* The technical contact */
  SslContact technicalContact = null;
  
/* The name of the certificate */
  String name = null;
  
/* The certificate term in months */
  TimePeriod lifetime = null;
  
/* The webserver software in use, relevant values: 'II5' for Mircosoft, 'APACHE2' for Linux */
  ServerSoftwareTypeConstants software = null;
  
/* A custom field. Can only be updated via PUT /certificate/{id}/_comment. Requires appropriate ACLs. */
  String comment = null;
  
/* CSR - Key (Certificate Signing Request) */
  String csr = null;
  
/* The certificate */
  String server = null;
  
/* Serial number of the certificate */
  String serialNumber = null;
  
/* The ordered product */
  String product = null;
  
/* The type of code signing */
  CodeSigningType codeSigningType = null;
  
/* The type of the certificate */
  CertificateType certificateType = null;
  
/* The signature hash algorithm which was used */
  SignatureHashAlgorithmConstants signatureHashAlgorithm = null;
  
/* The date on which the certificate expires */
  DateTime expire = null;
  
/* Subject Alternative Names (SANs) */
  List<SubjectAlternativeName> subjectAlternativeNames = [];
  
/* The history of the certificate (old certificate versions) */
  List<CertificateHistory> histories = [];
  
/* The certificate authority chain */
  List<CaCertificate> certificationAuthority = [];
  
/* The password that is to be used for the certificate download. Only for S/MIME! */
  String password = null;
  
/* First Name. Only for S/MIME! */
  String firstname = null;
  
/* Last Name. Only for S/MIME! */
  String lastname = null;
  
/* The technical contact email address. Only used in realtime orders! */
  String technicalContactEmail = null;
  
/* The organization unit. Only for S/MIME! */
  String organizationUnitName = null;
  
/* The authentication of the certificate */
  CertAuthentication authentication = null;
  
/* Activates the certificate transparency for a certificate. Default is \"True\". */
  bool certificateTransparency = null;
  
/* The privacy settings for certificate transparency. Default is \"Redacted\". */
  CertificateTransparencyPrivacyConstants certificateTransparencyPrivacy = null;
  
/* The domain, which the redirect belongs. */
  String domain = null;
  
/* States if a self created CSR is to be used for S/MIME. Default is false. Only for S/MIME! */
  bool hasCsr = null;
  
/* The IDN version of the URL of the target domain. */
  String idn = null;
  
  Certificate();

  @override
  String toString() {
    return 'Certificate[created=$created, updated=$updated, owner=$owner, updater=$updater, extension=$extension, id=$id, partnerOrderId=$partnerOrderId, orderId=$orderId, adminContact=$adminContact, technicalContact=$technicalContact, name=$name, lifetime=$lifetime, software=$software, comment=$comment, csr=$csr, server=$server, serialNumber=$serialNumber, product=$product, codeSigningType=$codeSigningType, certificateType=$certificateType, signatureHashAlgorithm=$signatureHashAlgorithm, expire=$expire, subjectAlternativeNames=$subjectAlternativeNames, histories=$histories, certificationAuthority=$certificationAuthority, password=$password, firstname=$firstname, lastname=$lastname, technicalContactEmail=$technicalContactEmail, organizationUnitName=$organizationUnitName, authentication=$authentication, certificateTransparency=$certificateTransparency, certificateTransparencyPrivacy=$certificateTransparencyPrivacy, domain=$domain, hasCsr=$hasCsr, idn=$idn, ]';
  }

  Certificate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    extension =
      
      
      new ExtendedValidationExtension.fromJson(json['extension'])
;
    id =
        json['id']
    ;
    partnerOrderId =
        json['partnerOrderId']
    ;
    orderId =
        json['orderId']
    ;
    adminContact =
      
      
      new SslContact.fromJson(json['adminContact'])
;
    technicalContact =
      
      
      new SslContact.fromJson(json['technicalContact'])
;
    name =
        json['name']
    ;
    lifetime =
      
      
      new TimePeriod.fromJson(json['lifetime'])
;
    software =
      
      
      new ServerSoftwareTypeConstants.fromJson(json['software'])
;
    comment =
        json['comment']
    ;
    csr =
        json['csr']
    ;
    server =
        json['server']
    ;
    serialNumber =
        json['serialNumber']
    ;
    product =
        json['product']
    ;
    codeSigningType =
      
      
      new CodeSigningType.fromJson(json['codeSigningType'])
;
    certificateType =
      
      
      new CertificateType.fromJson(json['certificateType'])
;
    signatureHashAlgorithm =
      
      
      new SignatureHashAlgorithmConstants.fromJson(json['signatureHashAlgorithm'])
;
    expire = json['expire'] == null ? null : DateTime.parse(json['expire']);
    subjectAlternativeNames =
      SubjectAlternativeName.listFromJson(json['subjectAlternativeNames'])
;
    histories =
      CertificateHistory.listFromJson(json['histories'])
;
    certificationAuthority =
      CaCertificate.listFromJson(json['certificationAuthority'])
;
    password =
        json['password']
    ;
    firstname =
        json['firstname']
    ;
    lastname =
        json['lastname']
    ;
    technicalContactEmail =
        json['technicalContactEmail']
    ;
    organizationUnitName =
        json['organizationUnitName']
    ;
    authentication =
      
      
      new CertAuthentication.fromJson(json['authentication'])
;
    certificateTransparency =
        json['certificateTransparency']
    ;
    certificateTransparencyPrivacy =
      
      
      new CertificateTransparencyPrivacyConstants.fromJson(json['certificateTransparencyPrivacy'])
;
    domain =
        json['domain']
    ;
    hasCsr =
        json['hasCsr']
    ;
    idn =
        json['idn']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'extension': extension,
      'id': id,
      'partnerOrderId': partnerOrderId,
      'orderId': orderId,
      'adminContact': adminContact,
      'technicalContact': technicalContact,
      'name': name,
      'lifetime': lifetime,
      'software': software,
      'comment': comment,
      'csr': csr,
      'server': server,
      'serialNumber': serialNumber,
      'product': product,
      'codeSigningType': codeSigningType,
      'certificateType': certificateType,
      'signatureHashAlgorithm': signatureHashAlgorithm,
      'expire': expire == null ? '' : expire.toUtc().toIso8601String(),
      'subjectAlternativeNames': subjectAlternativeNames,
      'histories': histories,
      'certificationAuthority': certificationAuthority,
      'password': password,
      'firstname': firstname,
      'lastname': lastname,
      'technicalContactEmail': technicalContactEmail,
      'organizationUnitName': organizationUnitName,
      'authentication': authentication,
      'certificateTransparency': certificateTransparency,
      'certificateTransparencyPrivacy': certificateTransparencyPrivacy,
      'domain': domain,
      'hasCsr': hasCsr,
      'idn': idn
     };
  }

  static List<Certificate> listFromJson(List<dynamic> json) {
    return json == null ? new List<Certificate>() : json.map((value) => new Certificate.fromJson(value)).toList();
  }

  static Map<String, Certificate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Certificate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Certificate.fromJson(value));
    }
    return map;
  }
}

