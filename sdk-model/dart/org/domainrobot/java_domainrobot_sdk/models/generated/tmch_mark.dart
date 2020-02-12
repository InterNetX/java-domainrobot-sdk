part of swagger.api;

class TmchMark {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updater of the object. */
  BasicUser updater = null;
  

  int id = null;
  

  TmchMarkTypeConstants type = null;
  

  String name = null;
  

  String reference = null;
  

  TmchContact holder = null;
  

  String description = null;
  

  TimePeriod period = null;
  

  List<TmchMarkDocument> documents = [];
  

  List<String> labels = [];
  

  List<TmchMarkComment> comments = [];
  

  RenewStatusConstants renew = null;
  

  TmchMarkStatusConstants status = null;
  

  DateTime payable = null;
  

  String internalComment = null;
  

  bool sent = null;
  

  bool smdInclusion = null;
  

  bool claimsNotify = null;
  

  String smdFile = null;
  

  bool orderComplete = null;
  

  bool claimsNotifyExtended = null;
  

  TmchMarkAddon extension = null;
  
  TmchMark();

  @override
  String toString() {
    return 'TmchMark[created=$created, updated=$updated, owner=$owner, updater=$updater, id=$id, type=$type, name=$name, reference=$reference, holder=$holder, description=$description, period=$period, documents=$documents, labels=$labels, comments=$comments, renew=$renew, status=$status, payable=$payable, internalComment=$internalComment, sent=$sent, smdInclusion=$smdInclusion, claimsNotify=$claimsNotify, smdFile=$smdFile, orderComplete=$orderComplete, claimsNotifyExtended=$claimsNotifyExtended, extension=$extension, ]';
  }

  TmchMark.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    id =
        json['id']
    ;
    type =
      
      
      new TmchMarkTypeConstants.fromJson(json['type'])
;
    name =
        json['name']
    ;
    reference =
        json['reference']
    ;
    holder =
      
      
      new TmchContact.fromJson(json['holder'])
;
    description =
        json['description']
    ;
    period =
      
      
      new TimePeriod.fromJson(json['period'])
;
    documents =
      TmchMarkDocument.listFromJson(json['documents'])
;
    labels =
        (json['labels'] as List).map((item) => item as String).toList()
    ;
    comments =
      TmchMarkComment.listFromJson(json['comments'])
;
    renew =
      
      
      new RenewStatusConstants.fromJson(json['renew'])
;
    status =
      
      
      new TmchMarkStatusConstants.fromJson(json['status'])
;
    payable = json['payable'] == null ? null : DateTime.parse(json['payable']);
    internalComment =
        json['internalComment']
    ;
    sent =
        json['sent']
    ;
    smdInclusion =
        json['smdInclusion']
    ;
    claimsNotify =
        json['claimsNotify']
    ;
    smdFile =
        json['smdFile']
    ;
    orderComplete =
        json['orderComplete']
    ;
    claimsNotifyExtended =
        json['claimsNotifyExtended']
    ;
    extension =
      
      
      new TmchMarkAddon.fromJson(json['extension'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'id': id,
      'type': type,
      'name': name,
      'reference': reference,
      'holder': holder,
      'description': description,
      'period': period,
      'documents': documents,
      'labels': labels,
      'comments': comments,
      'renew': renew,
      'status': status,
      'payable': payable == null ? '' : payable.toUtc().toIso8601String(),
      'internalComment': internalComment,
      'sent': sent,
      'smdInclusion': smdInclusion,
      'claimsNotify': claimsNotify,
      'smdFile': smdFile,
      'orderComplete': orderComplete,
      'claimsNotifyExtended': claimsNotifyExtended,
      'extension': extension
     };
  }

  static List<TmchMark> listFromJson(List<dynamic> json) {
    return json == null ? new List<TmchMark>() : json.map((value) => new TmchMark.fromJson(value)).toList();
  }

  static Map<String, TmchMark> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TmchMark>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TmchMark.fromJson(value));
    }
    return map;
  }
}

