part of swagger.api;

class WorkflowEvent {
  /* Lorem Ipsum */
  int vertex = null;
  
/* Lorem Ipsum */
  String type = null;
  
  WorkflowEvent();

  @override
  String toString() {
    return 'WorkflowEvent[vertex=$vertex, type=$type, ]';
  }

  WorkflowEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vertex =
        json['vertex']
    ;
    type =
        json['type']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'vertex': vertex,
      'type': type
     };
  }

  static List<WorkflowEvent> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkflowEvent>() : json.map((value) => new WorkflowEvent.fromJson(value)).toList();
  }

  static Map<String, WorkflowEvent> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkflowEvent>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkflowEvent.fromJson(value));
    }
    return map;
  }
}

