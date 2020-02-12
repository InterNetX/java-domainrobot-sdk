part of swagger.api;

class TimePeriod {
  /* The unit of the period */
  TimeUnitConstants unit = null;
  
/* The period value */
  int period = null;
  
  TimePeriod();

  @override
  String toString() {
    return 'TimePeriod[unit=$unit, period=$period, ]';
  }

  TimePeriod.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    unit =
      
      
      new TimeUnitConstants.fromJson(json['unit'])
;
    period =
        json['period']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'unit': unit,
      'period': period
     };
  }

  static List<TimePeriod> listFromJson(List<dynamic> json) {
    return json == null ? new List<TimePeriod>() : json.map((value) => new TimePeriod.fromJson(value)).toList();
  }

  static Map<String, TimePeriod> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TimePeriod>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TimePeriod.fromJson(value));
    }
    return map;
  }
}

