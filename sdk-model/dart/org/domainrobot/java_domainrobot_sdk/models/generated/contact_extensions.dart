part of swagger.api;

class ContactExtensions {
  /* The .aero contact extensions. */
  ContactAeroExtensions aero = null;
  
/* The .au contact extensions. */
  ContactAuExtensions au = null;
  
/* The .cat contact extensions. */
  ContactCatExtensions cat = null;
  
/* The .jobs contact extensions. */
  ContactJobsExtensions jobs = null;
  
/* The .it contact extensions. */
  ContactItExtensions it = null;
  
/* The .jp contact extensions. */
  ContactJpExtensions jp = null;
  
/* The .xxx contact extensions. */
  ContactXxxExtensions xxx = null;
  
/* The .hk contact extensions. */
  ContactHkExtensions hk = null;
  
/* The .bank contact extensions. */
  ContactBankExtensions bank = null;
  
/* The .swiss contact extensions. */
  ContactSwissExtensions swiss = null;
  
/* The .ru contact extensions. */
  ContactRuExtensions ru = null;
  
/* The .uk contact extensions. */
  ContactUkExtensions uk = null;
  
/* The .ca contact extensions. */
  ContactCaExtensions ca = null;
  
/* The .ro contact extensions. */
  ContactRoExtensions ro = null;
  
/* The .barcelona contact extensions. */
  ContactBarcelonaExtensions barcelona = null;
  
/* The general contact extensions. */
  ContactGeneralExtensions general = null;
  
/* The .nz contact extensions */
  ContactNzExtensions nz = null;
  
/* The .sport contact extensions. */
  ContactSportExtensions sport = null;
  
/* The .luxe contact extensions. */
  ContactLuxeExtensions luxe = null;
  
/* The .madrid contact extensions. */
  ContactMadridExtensions madrid = null;
  
  ContactExtensions();

  @override
  String toString() {
    return 'ContactExtensions[aero=$aero, au=$au, cat=$cat, jobs=$jobs, it=$it, jp=$jp, xxx=$xxx, hk=$hk, bank=$bank, swiss=$swiss, ru=$ru, uk=$uk, ca=$ca, ro=$ro, barcelona=$barcelona, general=$general, nz=$nz, sport=$sport, luxe=$luxe, madrid=$madrid, ]';
  }

  ContactExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    aero =
      
      
      new ContactAeroExtensions.fromJson(json['aero'])
;
    au =
      
      
      new ContactAuExtensions.fromJson(json['au'])
;
    cat =
      
      
      new ContactCatExtensions.fromJson(json['cat'])
;
    jobs =
      
      
      new ContactJobsExtensions.fromJson(json['jobs'])
;
    it =
      
      
      new ContactItExtensions.fromJson(json['it'])
;
    jp =
      
      
      new ContactJpExtensions.fromJson(json['jp'])
;
    xxx =
      
      
      new ContactXxxExtensions.fromJson(json['xxx'])
;
    hk =
      
      
      new ContactHkExtensions.fromJson(json['hk'])
;
    bank =
      
      
      new ContactBankExtensions.fromJson(json['bank'])
;
    swiss =
      
      
      new ContactSwissExtensions.fromJson(json['swiss'])
;
    ru =
      
      
      new ContactRuExtensions.fromJson(json['ru'])
;
    uk =
      
      
      new ContactUkExtensions.fromJson(json['uk'])
;
    ca =
      
      
      new ContactCaExtensions.fromJson(json['ca'])
;
    ro =
      
      
      new ContactRoExtensions.fromJson(json['ro'])
;
    barcelona =
      
      
      new ContactBarcelonaExtensions.fromJson(json['barcelona'])
;
    general =
      
      
      new ContactGeneralExtensions.fromJson(json['general'])
;
    nz =
      
      
      new ContactNzExtensions.fromJson(json['nz'])
;
    sport =
      
      
      new ContactSportExtensions.fromJson(json['sport'])
;
    luxe =
      
      
      new ContactLuxeExtensions.fromJson(json['luxe'])
;
    madrid =
      
      
      new ContactMadridExtensions.fromJson(json['madrid'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'aero': aero,
      'au': au,
      'cat': cat,
      'jobs': jobs,
      'it': it,
      'jp': jp,
      'xxx': xxx,
      'hk': hk,
      'bank': bank,
      'swiss': swiss,
      'ru': ru,
      'uk': uk,
      'ca': ca,
      'ro': ro,
      'barcelona': barcelona,
      'general': general,
      'nz': nz,
      'sport': sport,
      'luxe': luxe,
      'madrid': madrid
     };
  }

  static List<ContactExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactExtensions>() : json.map((value) => new ContactExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactExtensions.fromJson(value));
    }
    return map;
  }
}

