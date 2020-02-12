part of swagger.api;

class ObjectJob {
  /* The related job. */
  Job job = null;
  
/* The object of the job or notify. */
  List<NiccomLog> object = [];
  
  ObjectJob();

  @override
  String toString() {
    return 'ObjectJob[job=$job, object=$object, ]';
  }

  ObjectJob.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    job =
      
      
      new Job.fromJson(json['job'])
;
    object =
      NiccomLog.listFromJson(json['object'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'job': job,
      'object': object
     };
  }

  static List<ObjectJob> listFromJson(List<dynamic> json) {
    return json == null ? new List<ObjectJob>() : json.map((value) => new ObjectJob.fromJson(value)).toList();
  }

  static Map<String, ObjectJob> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ObjectJob>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ObjectJob.fromJson(value));
    }
    return map;
  }
}

