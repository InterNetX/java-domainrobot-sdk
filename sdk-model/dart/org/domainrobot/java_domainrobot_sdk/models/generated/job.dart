part of swagger.api;

class Job {
  /* The created date. */
  DateTime created = null;
  
/* The updated date. */
  DateTime updated = null;
  
/* The owner of the object. */
  BasicUser owner = null;
  
/* The updater of the object. */
  BasicUser updater = null;
  
/* The status of the job. */
  JobStatusConstants status = null;
  
/* The substatus of the job. */
  String subStatus = null;
  
/* The next execution date of the job. */
  DateTime execution = null;
  
/* The events. */
  List<WorkflowEvent> events = [];
  
/* The job subtype. */
  String subType = null;
  
/* The job action. */
  String action = null;
  
/* The job id. */
  int id = null;
  
  Job();

  @override
  String toString() {
    return 'Job[created=$created, updated=$updated, owner=$owner, updater=$updater, status=$status, subStatus=$subStatus, execution=$execution, events=$events, subType=$subType, action=$action, id=$id, ]';
  }

  Job.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    updated = json['updated'] == null ? null : DateTime.parse(json['updated']);
    owner =
      
      
      new BasicUser.fromJson(json['owner'])
;
    updater =
      
      
      new BasicUser.fromJson(json['updater'])
;
    status =
      
      
      new JobStatusConstants.fromJson(json['status'])
;
    subStatus =
        json['subStatus']
    ;
    execution = json['execution'] == null ? null : DateTime.parse(json['execution']);
    events =
      WorkflowEvent.listFromJson(json['events'])
;
    subType =
        json['subType']
    ;
    action =
        json['action']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'updated': updated == null ? '' : updated.toUtc().toIso8601String(),
      'owner': owner,
      'updater': updater,
      'status': status,
      'subStatus': subStatus,
      'execution': execution == null ? '' : execution.toUtc().toIso8601String(),
      'events': events,
      'subType': subType,
      'action': action,
      'id': id
     };
  }

  static List<Job> listFromJson(List<dynamic> json) {
    return json == null ? new List<Job>() : json.map((value) => new Job.fromJson(value)).toList();
  }

  static Map<String, Job> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Job>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Job.fromJson(value));
    }
    return map;
  }
}

