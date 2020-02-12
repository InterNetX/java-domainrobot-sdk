part of swagger.api;

class ContactGeneralExtensions {
  /* The birth extensions. */
  ContactBirthExtensions birth = null;
  
/* The trademark extensions. */
  ContactTrademarkExtensions trademark = null;
  
/* The identification extensions. */
  ContactIdentificationExtensions identification = null;
  
/* The language. */
  String language = null;
  
/* The company number. */
  String companyNumber = null;
  
/* The gender. */
  GenderConstants gender = null;
  
/* The vatnumber. */
  String vatNumber = null;
  
/* The citizenship. */
  String citizenship = null;
  
/* The mobile phonenumber. */
  String mobilePhone = null;
  
  ContactGeneralExtensions();

  @override
  String toString() {
    return 'ContactGeneralExtensions[birth=$birth, trademark=$trademark, identification=$identification, language=$language, companyNumber=$companyNumber, gender=$gender, vatNumber=$vatNumber, citizenship=$citizenship, mobilePhone=$mobilePhone, ]';
  }

  ContactGeneralExtensions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    birth =
      
      
      new ContactBirthExtensions.fromJson(json['birth'])
;
    trademark =
      
      
      new ContactTrademarkExtensions.fromJson(json['trademark'])
;
    identification =
      
      
      new ContactIdentificationExtensions.fromJson(json['identification'])
;
    language =
        json['language']
    ;
    companyNumber =
        json['companyNumber']
    ;
    gender =
      
      
      new GenderConstants.fromJson(json['gender'])
;
    vatNumber =
        json['vatNumber']
    ;
    citizenship =
        json['citizenship']
    ;
    mobilePhone =
        json['mobilePhone']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'birth': birth,
      'trademark': trademark,
      'identification': identification,
      'language': language,
      'companyNumber': companyNumber,
      'gender': gender,
      'vatNumber': vatNumber,
      'citizenship': citizenship,
      'mobilePhone': mobilePhone
     };
  }

  static List<ContactGeneralExtensions> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContactGeneralExtensions>() : json.map((value) => new ContactGeneralExtensions.fromJson(value)).toList();
  }

  static Map<String, ContactGeneralExtensions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContactGeneralExtensions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContactGeneralExtensions.fromJson(value));
    }
    return map;
  }
}

