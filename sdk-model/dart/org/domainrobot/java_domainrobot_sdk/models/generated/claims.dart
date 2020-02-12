part of swagger.api;

class Claims {
  /* End-User's full name in displayable form including all name parts, possibly including titles and suffixes, ordered according to the End-User's locale and preferences. */
  String name = null;
  
/* Given name(s) or first name(s) of the End-User. Note that in some cultures, people can have multiple given names; all can be present, with the names being separated by space characters. */
  String givenName = null;
  
/* Surname(s) or last name(s) of the End-User. Note that in some cultures, people can have multiple family names or no family name; all can be present, with the names being separated by space characters */
  String familyName = null;
  
/* Middle name(s) of the End-User. Note that in some cultures, people can have multiple middle names; all can be present, with the names being separated by space characters. Also note that in some cultures, middle names are not used. */
  String middleName = null;
  
/* Casual name of the End-User that may or may not be the same as the given_name. For instance, a nickname value of Mike might be returned alongside a given_name value of Michael. */
  String nickname = null;
  
/* Shorthand name by which the End-User wishes to be referred to at the RP, such as janedoe or j.doe. This value MAY be any valid JSON string including special characters such as @, /, or whitespace */
  String preferredUsername = null;
  
/* URL of the End-User's profile page. The contents of this Web page SHOULD be about the End-User. */
  UrlEntity profile = null;
  
/* URL of the End-User's profile picture. */
  UrlEntity picture = null;
  
/* URL of the End-User's Web page or blog. This Web page SHOULD contain information published by the End-User or an organization that the End-User is affiliated with. */
  UrlEntity website = null;
  
/* End-user's preferred email address */
  String email = null;
  
/* True if the End-User's e-mail address has been verified; otherwise false. */
  bool emailVerified = null;
  
/* URL of the End-User's profile picture. */
  GenderConstants gender = null;
  
/* End-user's birth date, ISO 8601:2004 (YYYY-MM-DD) */
  DateTime birthdate = null;
  
/* End-User's zoneinfo. */
  String zoneinfo = null;
  
/* The locale. */
  String locale = null;
  
/* End-User's preferred telephone number. E.164 [E.164] is RECOMMENDED as the format of this Claim, for example, +1 (425) 555-1212 or +56 (2) 687 2400. . */
  Phone phoneNumber = null;
  
/* True if the End-User's phne number has been verified; otherwise false. */
  bool phoneNumberVerified = null;
  
/* End-user's address */
  AddressClaim address = null;
  
/* End-user's organization */
  String organization = null;
  
  Claims();

  @override
  String toString() {
    return 'Claims[name=$name, givenName=$givenName, familyName=$familyName, middleName=$middleName, nickname=$nickname, preferredUsername=$preferredUsername, profile=$profile, picture=$picture, website=$website, email=$email, emailVerified=$emailVerified, gender=$gender, birthdate=$birthdate, zoneinfo=$zoneinfo, locale=$locale, phoneNumber=$phoneNumber, phoneNumberVerified=$phoneNumberVerified, address=$address, organization=$organization, ]';
  }

  Claims.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    givenName =
        json['given_name']
    ;
    familyName =
        json['family_name']
    ;
    middleName =
        json['middle_name']
    ;
    nickname =
        json['nickname']
    ;
    preferredUsername =
        json['preferred_username']
    ;
    profile =
      
      
      new UrlEntity.fromJson(json['profile'])
;
    picture =
      
      
      new UrlEntity.fromJson(json['picture'])
;
    website =
      
      
      new UrlEntity.fromJson(json['website'])
;
    email =
        json['email']
    ;
    emailVerified =
        json['email_verified']
    ;
    gender =
      
      
      new GenderConstants.fromJson(json['gender'])
;
    birthdate = json['birthdate'] == null ? null : DateTime.parse(json['birthdate']);
    zoneinfo =
        json['zoneinfo']
    ;
    locale =
        json['locale']
    ;
    phoneNumber =
      
      
      new Phone.fromJson(json['phone_number'])
;
    phoneNumberVerified =
        json['phone_number_verified']
    ;
    address =
      
      
      new AddressClaim.fromJson(json['address'])
;
    organization =
        json['organization']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'given_name': givenName,
      'family_name': familyName,
      'middle_name': middleName,
      'nickname': nickname,
      'preferred_username': preferredUsername,
      'profile': profile,
      'picture': picture,
      'website': website,
      'email': email,
      'email_verified': emailVerified,
      'gender': gender,
      'birthdate': birthdate == null ? '' : birthdate.toUtc().toIso8601String(),
      'zoneinfo': zoneinfo,
      'locale': locale,
      'phone_number': phoneNumber,
      'phone_number_verified': phoneNumberVerified,
      'address': address,
      'organization': organization
     };
  }

  static List<Claims> listFromJson(List<dynamic> json) {
    return json == null ? new List<Claims>() : json.map((value) => new Claims.fromJson(value)).toList();
  }

  static Map<String, Claims> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Claims>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Claims.fromJson(value));
    }
    return map;
  }
}

