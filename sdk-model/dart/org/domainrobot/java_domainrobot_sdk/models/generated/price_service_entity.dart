part of swagger.api;

class PriceServiceEntity {
  /* Lorem Ipum */
  Map<String, Object> configuration = {};
  
/* Lorem Ipum */
  ServiceEntity condition = null;
  
  PriceServiceEntity();

  @override
  String toString() {
    return 'PriceServiceEntity[configuration=$configuration, condition=$condition, ]';
  }

  PriceServiceEntity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    configuration =
      
      Object.mapFromJson(json['configuration'])
      
;
    condition =
      
      
      new ServiceEntity.fromJson(json['condition'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'configuration': configuration,
      'condition': condition
     };
  }

  static List<PriceServiceEntity> listFromJson(List<dynamic> json) {
    return json == null ? new List<PriceServiceEntity>() : json.map((value) => new PriceServiceEntity.fromJson(value)).toList();
  }

  static Map<String, PriceServiceEntity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PriceServiceEntity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PriceServiceEntity.fromJson(value));
    }
    return map;
  }
}

