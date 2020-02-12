part of swagger.api;

class ContactReference {
  /* The nic */
  NicMember nic = null;
  
/* The status */
  ObjectStatus status = null;
  
/* The contact reference type */
  ContactReferenceType type = null;
  
/* The role as contact reference type */
  ContactReferenceType role = null;
  
/* The nic reference */
  String name = null;
  
  ContactReference();

  @override
  String toString() {
    return 'ContactReference[nic=$nic, status=$status, type=$type, role=$role, name=$name, ]';
  }

  ContactReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    nic =
      
      
      new NicMember.fromJson(json['nic'])
;
    status =
      
      
      new ObjectStatus.fromJson(json['status'])
;
    type =
      
      
      new ContactReferenceType.fromJson(json['type'])
;
    role =
      
      
      new ContactReferenceType.fromJson(json['role'])
;
    name =
        json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'nic': nic,
      'status': status,
      'type': type,
      'role': role,
      'name': name
     };
  }

  static List<ContactReference> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactReference>() : json.map((value) => new ContactReference.fromJson(value)).toList();
  }

  static Map<String, ContactReference> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactReference>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactReference.fromJson(value));
    }
    return map;
  }
}

