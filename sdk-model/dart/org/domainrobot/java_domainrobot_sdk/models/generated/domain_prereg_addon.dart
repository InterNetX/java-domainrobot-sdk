part of swagger.api;

class DomainPreregAddon {
  /* The Irp App Capacity. */
  String irpAppCapacit = null;
  
/* The Irp App Date. */
  DateTime irpAppDate = null;
  
/* The Irp Cc Locality. */
  String irpCcLocality = null;
  
/* The Irp Name. */
  String irpName = null;
  
/* The Irp Number. */
  String irpNumber = null;
  
/* The Irp Pvrc. */
  String irpPvrc = null;
  
/* The Irp Reg Date. */
  DateTime irpRegDate = null;
  
/* The addon update mode. */
  String mode = null;
  
/* Confirm order. */
  bool confirmOrder = null;
  
/* The external reference. */
  String externalReference = null;
  
/* The not after date. */
  DateTime notAfter = null;
  
/* The confirmed date. */
  DateTime confirmed = null;
  
/* The confirm ip. */
  String confirmIp = null;
  
/* The price class. */
  String priceClass = null;
  
  DomainPreregAddon();

  @override
  String toString() {
    return 'DomainPreregAddon[irpAppCapacit=$irpAppCapacit, irpAppDate=$irpAppDate, irpCcLocality=$irpCcLocality, irpName=$irpName, irpNumber=$irpNumber, irpPvrc=$irpPvrc, irpRegDate=$irpRegDate, mode=$mode, confirmOrder=$confirmOrder, externalReference=$externalReference, notAfter=$notAfter, confirmed=$confirmed, confirmIp=$confirmIp, priceClass=$priceClass, ]';
  }

  DomainPreregAddon.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    irpAppCapacit =
        json['irpAppCapacit']
    ;
    irpAppDate = json['irpAppDate'] == null ? null : DateTime.parse(json['irpAppDate']);
    irpCcLocality =
        json['irpCcLocality']
    ;
    irpName =
        json['irpName']
    ;
    irpNumber =
        json['irpNumber']
    ;
    irpPvrc =
        json['irpPvrc']
    ;
    irpRegDate = json['irpRegDate'] == null ? null : DateTime.parse(json['irpRegDate']);
    mode =
        json['mode']
    ;
    confirmOrder =
        json['confirmOrder']
    ;
    externalReference =
        json['externalReference']
    ;
    notAfter = json['notAfter'] == null ? null : DateTime.parse(json['notAfter']);
    confirmed = json['confirmed'] == null ? null : DateTime.parse(json['confirmed']);
    confirmIp =
        json['confirmIp']
    ;
    priceClass =
        json['priceClass']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'irpAppCapacit': irpAppCapacit,
      'irpAppDate': irpAppDate == null ? '' : irpAppDate.toUtc().toIso8601String(),
      'irpCcLocality': irpCcLocality,
      'irpName': irpName,
      'irpNumber': irpNumber,
      'irpPvrc': irpPvrc,
      'irpRegDate': irpRegDate == null ? '' : irpRegDate.toUtc().toIso8601String(),
      'mode': mode,
      'confirmOrder': confirmOrder,
      'externalReference': externalReference,
      'notAfter': notAfter == null ? '' : notAfter.toUtc().toIso8601String(),
      'confirmed': confirmed == null ? '' : confirmed.toUtc().toIso8601String(),
      'confirmIp': confirmIp,
      'priceClass': priceClass
     };
  }

  static List<DomainPreregAddon> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainPreregAddon>() : json.map((value) => new DomainPreregAddon.fromJson(value)).toList();
  }

  static Map<String, DomainPreregAddon> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainPreregAddon>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainPreregAddon.fromJson(value));
    }
    return map;
  }
}

