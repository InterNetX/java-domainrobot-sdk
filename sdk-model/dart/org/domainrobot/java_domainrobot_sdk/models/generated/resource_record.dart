part of swagger.api;

class ResourceRecord {
  /* The name of the record. */
  String name = null;
  
/* TTL of the record (Optionally if not set then Default SOA TTL is used) */
  int ttl = null;
  
/* The type of the record, e.g. A */
  String type = null;
  
/* The value of the record. */
  String value = null;
  
/* Preference of the record, need for some record types e.g. MX */
  int pref = null;
  //enum prefEnum {  };
/* The bind notation of the record. Only used by the zone stream task! */
  String raw = null;
  
  ResourceRecord();

  @override
  String toString() {
    return 'ResourceRecord[name=$name, ttl=$ttl, type=$type, value=$value, pref=$pref, raw=$raw, ]';
  }

  ResourceRecord.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    ttl =
        json['ttl']
    ;
    type =
        json['type']
    ;
    value =
        json['value']
    ;
    pref =
        json['pref']
    ;
    raw =
        json['raw']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'ttl': ttl,
      'type': type,
      'value': value,
      'pref': pref,
      'raw': raw
     };
  }

  static List<ResourceRecord> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResourceRecord>() : json.map((value) => new ResourceRecord.fromJson(value)).toList();
  }

  static Map<String, ResourceRecord> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ResourceRecord>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ResourceRecord.fromJson(value));
    }
    return map;
  }
}

