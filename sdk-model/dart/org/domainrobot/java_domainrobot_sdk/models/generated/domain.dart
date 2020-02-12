part of swagger.api;

class Domain {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updater of the object. */
  BasicUser updater = null;
  
/* The name of the domain. */
  String name = null;
  
/* The unicode domain name */
  String idn = null;
  
/* The nic member label. */
  String nicMemberLabel = null;
  
/* The registry status. */
  RegistryStatusConstants registryStatus = null;
  
/* The nameservers. */
  List<NameServer> nameServers = [];
  
/* NSentry is only be provided for .DE. If NSentry is used, nameServers is not allowed. */
  List<String> nameServerEntries = [];
  
/* The renew period in years. */
  TimePeriod period = null;
  
/* Enable trustee service for the domain. */
  bool trustee = null;
  
/* Enable privacy service for the domain. */
  bool privacy = null;
  
/* The authinfo. */
  String authinfo = null;
  
/* Enable domainsafe. */
  bool domainsafe = null;
  
/* The parking provider. */
  ParkingProviderConstants parking = null;
  
/* The domain extensions. */
  DomainExtensions extensions = null;
  
/* The logId */
  int logId = null;
  
/* An additional nameserver check will be carried out. */
  DNSCheck nsCheck = null;
  
/* Some TLDs require a confirmation of the “Terms and Conditions of Registration. */
  bool confirmOrder = null;
  
/* Confirms the consent of the domainowner for the changes. Required for gTLDs and new gTLDs when changing the name, the email address or the organization of the domain owner. */
  bool confirmOwnerConsent = null;
  
/* Ignore whois. */
  bool ignoreWhois = null;
  
/* A custom field. Can only be updated via PUT /domain/{name}/_comment. Requires appropriate ACLs. */
  String comment = null;
  
/* Enable utomatic creation of the www subdomain. */
  bool includeWWW = null;
  
/* Enable include wildcard. */
  bool includeWildcard = null;
  
/* The registrar status. */
  RegistryStatusConstants registrarStatus = null;
  
/* The registrar status reason. */
  String registrarStatusReason = null;
  
/* Remove cancelation. */
  bool removeCancelation = null;
  
/* AutodnsSecJob */
  DNSSecJob autodnsSecJob = null;
  
/* The priceclass for the registration of the domain. */
  String priceClass = null;
  
/* The priceclass for the renew of the domain. */
  String priceClassRenew = null;
  
/* The abuse email. */
  String abuseEmail = null;
  
/* The general request mail. */
  String generalRequestEmail = null;
  
/* The privacy plus mail. */
  String privacyPlusMail = null;
  
/* Enable privacy plus. */
  bool privacyPlus = null;
  
/* The nameserver group. */
  String nameServerGroup = null;
  
/* Enables the whois output to show redacted contacts. */
  RddsOptInConstants rddsOptIn = null;
  
/* Adds pending services like BackupMX and MailProxy. */
  DomainServices servicesAdd = null;
  
/* Removes pending services like BackupMX and MailProxy. */
  DomainServices servicesRem = null;
  
/* The owner contact. */
  Contact ownerc = null;
  
/* The administrative contact. */
  Contact adminc = null;
  
/* The technical contact reference. */
  Contact techc = null;
  
/* The dns contact. */
  Contact zonec = null;
  
/* The expire date of the domain. */
  DateTime expire = null;
  
/* The payable date of the domain. */
  DateTime payable = null;
  
/* The last action. */
  DomainActionConstants action = null;
  
/* Enables or disables automatic DNSSEC for certain name servers (e.g. NodeSecure). */
  bool autoDnssec = null;
  
/* Indicates whether DNSSEC is enabled for the domain or not. */
  bool dnssec = null;
  
/* Domain has an matching certificate. */
  bool validCertificate = null;
  
/* The cancelation status. */
  CancelationStatusConstants cancelationStatus = null;
  
/* The autorenew status. */
  AutoRenewStatusConstants autoRenewStatus = null;
  
/* Submits the key material to the registry. If the list is empty, the key material is deleted at the registry. If the key is omitted during an update, the data is retained. */
  List<DNSSec> dnssecData = [];
  
/* The zone to create. */
  Zone zone = null;
  
  Domain();

  @override
  String toString() {
    return 'Domain[created=$created, updated=$updated, owner=$owner, updater=$updater, name=$name, idn=$idn, nicMemberLabel=$nicMemberLabel, registryStatus=$registryStatus, nameServers=$nameServers, nameServerEntries=$nameServerEntries, period=$period, trustee=$trustee, privacy=$privacy, authinfo=$authinfo, domainsafe=$domainsafe, parking=$parking, extensions=$extensions, logId=$logId, nsCheck=$nsCheck, confirmOrder=$confirmOrder, confirmOwnerConsent=$confirmOwnerConsent, ignoreWhois=$ignoreWhois, comment=$comment, includeWWW=$includeWWW, includeWildcard=$includeWildcard, registrarStatus=$registrarStatus, registrarStatusReason=$registrarStatusReason, removeCancelation=$removeCancelation, autodnsSecJob=$autodnsSecJob, priceClass=$priceClass, priceClassRenew=$priceClassRenew, abuseEmail=$abuseEmail, generalRequestEmail=$generalRequestEmail, privacyPlusMail=$privacyPlusMail, privacyPlus=$privacyPlus, nameServerGroup=$nameServerGroup, rddsOptIn=$rddsOptIn, servicesAdd=$servicesAdd, servicesRem=$servicesRem, ownerc=$ownerc, adminc=$adminc, techc=$techc, zonec=$zonec, expire=$expire, payable=$payable, action=$action, autoDnssec=$autoDnssec, dnssec=$dnssec, validCertificate=$validCertificate, cancelationStatus=$cancelationStatus, autoRenewStatus=$autoRenewStatus, dnssecData=$dnssecData, zone=$zone, ]';
  }

  Domain.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    name =
        json['name']
    ;
    idn =
        json['idn']
    ;
    nicMemberLabel =
        json['nicMemberLabel']
    ;
    registryStatus =
      
      
      new RegistryStatusConstants.fromJson(json['registryStatus'])
;
    nameServers =
      NameServer.listFromJson(json['nameServers'])
;
    nameServerEntries =
        (json['nameServerEntries'] as List).map((item) => item as String).toList()
    ;
    period =
      
      
      new TimePeriod.fromJson(json['period'])
;
    trustee =
        json['trustee']
    ;
    privacy =
        json['privacy']
    ;
    authinfo =
        json['authinfo']
    ;
    domainsafe =
        json['domainsafe']
    ;
    parking =
      
      
      new ParkingProviderConstants.fromJson(json['parking'])
;
    extensions =
      
      
      new DomainExtensions.fromJson(json['extensions'])
;
    logId =
        json['logId']
    ;
    nsCheck =
      
      
      new DNSCheck.fromJson(json['nsCheck'])
;
    confirmOrder =
        json['confirmOrder']
    ;
    confirmOwnerConsent =
        json['confirmOwnerConsent']
    ;
    ignoreWhois =
        json['ignoreWhois']
    ;
    comment =
        json['comment']
    ;
    includeWWW =
        json['includeWWW']
    ;
    includeWildcard =
        json['includeWildcard']
    ;
    registrarStatus =
      
      
      new RegistryStatusConstants.fromJson(json['registrarStatus'])
;
    registrarStatusReason =
        json['registrarStatusReason']
    ;
    removeCancelation =
        json['removeCancelation']
    ;
    autodnsSecJob =
      
      
      new DNSSecJob.fromJson(json['autodnsSecJob'])
;
    priceClass =
        json['priceClass']
    ;
    priceClassRenew =
        json['priceClassRenew']
    ;
    abuseEmail =
        json['abuseEmail']
    ;
    generalRequestEmail =
        json['generalRequestEmail']
    ;
    privacyPlusMail =
        json['privacyPlusMail']
    ;
    privacyPlus =
        json['privacyPlus']
    ;
    nameServerGroup =
        json['nameServerGroup']
    ;
    rddsOptIn =
      
      
      new RddsOptInConstants.fromJson(json['rddsOptIn'])
;
    servicesAdd =
      
      
      new DomainServices.fromJson(json['servicesAdd'])
;
    servicesRem =
      
      
      new DomainServices.fromJson(json['servicesRem'])
;
    ownerc =
      
      
      new Contact.fromJson(json['ownerc'])
;
    adminc =
      
      
      new Contact.fromJson(json['adminc'])
;
    techc =
      
      
      new Contact.fromJson(json['techc'])
;
    zonec =
      
      
      new Contact.fromJson(json['zonec'])
;
    expire = json['expire'] == null ? null : DateTime.parse(json['expire']);
    payable = json['payable'] == null ? null : DateTime.parse(json['payable']);
    action =
      
      
      new DomainActionConstants.fromJson(json['action'])
;
    autoDnssec =
        json['autoDnssec']
    ;
    dnssec =
        json['dnssec']
    ;
    validCertificate =
        json['validCertificate']
    ;
    cancelationStatus =
      
      
      new CancelationStatusConstants.fromJson(json['cancelationStatus'])
;
    autoRenewStatus =
      
      
      new AutoRenewStatusConstants.fromJson(json['autoRenewStatus'])
;
    dnssecData =
      DNSSec.listFromJson(json['dnssecData'])
;
    zone =
      
      
      new Zone.fromJson(json['zone'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'name': name,
      'idn': idn,
      'nicMemberLabel': nicMemberLabel,
      'registryStatus': registryStatus,
      'nameServers': nameServers,
      'nameServerEntries': nameServerEntries,
      'period': period,
      'trustee': trustee,
      'privacy': privacy,
      'authinfo': authinfo,
      'domainsafe': domainsafe,
      'parking': parking,
      'extensions': extensions,
      'logId': logId,
      'nsCheck': nsCheck,
      'confirmOrder': confirmOrder,
      'confirmOwnerConsent': confirmOwnerConsent,
      'ignoreWhois': ignoreWhois,
      'comment': comment,
      'includeWWW': includeWWW,
      'includeWildcard': includeWildcard,
      'registrarStatus': registrarStatus,
      'registrarStatusReason': registrarStatusReason,
      'removeCancelation': removeCancelation,
      'autodnsSecJob': autodnsSecJob,
      'priceClass': priceClass,
      'priceClassRenew': priceClassRenew,
      'abuseEmail': abuseEmail,
      'generalRequestEmail': generalRequestEmail,
      'privacyPlusMail': privacyPlusMail,
      'privacyPlus': privacyPlus,
      'nameServerGroup': nameServerGroup,
      'rddsOptIn': rddsOptIn,
      'servicesAdd': servicesAdd,
      'servicesRem': servicesRem,
      'ownerc': ownerc,
      'adminc': adminc,
      'techc': techc,
      'zonec': zonec,
      'expire': expire == null ? '' : expire.toUtc().toIso8601String(),
      'payable': payable == null ? '' : payable.toUtc().toIso8601String(),
      'action': action,
      'autoDnssec': autoDnssec,
      'dnssec': dnssec,
      'validCertificate': validCertificate,
      'cancelationStatus': cancelationStatus,
      'autoRenewStatus': autoRenewStatus,
      'dnssecData': dnssecData,
      'zone': zone
     };
  }

  static List<Domain> listFromJson(List<dynamic> json) {
    return json == null ? new List<Domain>() : json.map((value) => new Domain.fromJson(value)).toList();
  }

  static Map<String, Domain> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Domain>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Domain.fromJson(value));
    }
    return map;
  }
}

