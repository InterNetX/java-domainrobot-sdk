part of swagger.api;

class DomainServices {
  /* Removes pending services like BackupMX and MailProxy. */
  List<BackupMx> backupMx = [];
  
/* Removes pending services like BackupMX and MailProxy. */
  List<MailProxy> mailProxy = [];
  
/* Removes pending services like BackupMX and MailProxy. */
  List<Redirect> redirect = [];
  
/* Removes pending services like BackupMX and MailProxy. */
  List<DomainMonitoring> domainMonitoring = [];
  
  DomainServices();

  @override
  String toString() {
    return 'DomainServices[backupMx=$backupMx, mailProxy=$mailProxy, redirect=$redirect, domainMonitoring=$domainMonitoring, ]';
  }

  DomainServices.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    backupMx =
      BackupMx.listFromJson(json['backupMx'])
;
    mailProxy =
      MailProxy.listFromJson(json['mailProxy'])
;
    redirect =
      Redirect.listFromJson(json['redirect'])
;
    domainMonitoring =
      DomainMonitoring.listFromJson(json['domainMonitoring'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'backupMx': backupMx,
      'mailProxy': mailProxy,
      'redirect': redirect,
      'domainMonitoring': domainMonitoring
     };
  }

  static List<DomainServices> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainServices>() : json.map((value) => new DomainServices.fromJson(value)).toList();
  }

  static Map<String, DomainServices> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainServices>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainServices.fromJson(value));
    }
    return map;
  }
}

