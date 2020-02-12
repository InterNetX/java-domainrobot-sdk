# swagger.model.Claims

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | End-User&#39;s full name in displayable form including all name parts, possibly including titles and suffixes, ordered according to the End-User&#39;s locale and preferences. | [optional] [default to null]
**givenName** | **String** | Given name(s) or first name(s) of the End-User. Note that in some cultures, people can have multiple given names; all can be present, with the names being separated by space characters. | [optional] [default to null]
**familyName** | **String** | Surname(s) or last name(s) of the End-User. Note that in some cultures, people can have multiple family names or no family name; all can be present, with the names being separated by space characters | [optional] [default to null]
**middleName** | **String** | Middle name(s) of the End-User. Note that in some cultures, people can have multiple middle names; all can be present, with the names being separated by space characters. Also note that in some cultures, middle names are not used. | [optional] [default to null]
**nickname** | **String** | Casual name of the End-User that may or may not be the same as the given_name. For instance, a nickname value of Mike might be returned alongside a given_name value of Michael. | [optional] [default to null]
**preferredUsername** | **String** | Shorthand name by which the End-User wishes to be referred to at the RP, such as janedoe or j.doe. This value MAY be any valid JSON string including special characters such as @, /, or whitespace | [optional] [default to null]
**profile** | [**UrlEntity**](UrlEntity.md) | URL of the End-User&#39;s profile page. The contents of this Web page SHOULD be about the End-User. | [optional] [default to null]
**picture** | [**UrlEntity**](UrlEntity.md) | URL of the End-User&#39;s profile picture. | [optional] [default to null]
**website** | [**UrlEntity**](UrlEntity.md) | URL of the End-User&#39;s Web page or blog. This Web page SHOULD contain information published by the End-User or an organization that the End-User is affiliated with. | [optional] [default to null]
**email** | **String** | End-user&#39;s preferred email address | [optional] [default to null]
**emailVerified** | **bool** | True if the End-User&#39;s e-mail address has been verified; otherwise false. | [optional] [default to null]
**gender** | [**GenderConstants**](GenderConstants.md) | URL of the End-User&#39;s profile picture. | [optional] [default to null]
**birthdate** | [**DateTime**](DateTime.md) | End-user&#39;s birth date, ISO 8601:2004 (YYYY-MM-DD) | [optional] [default to null]
**zoneinfo** | **String** | End-User&#39;s zoneinfo. | [optional] [default to null]
**locale** | **String** | The locale. | [optional] [default to null]
**phoneNumber** | [**Phone**](Phone.md) | End-User&#39;s preferred telephone number. E.164 [E.164] is RECOMMENDED as the format of this Claim, for example, +1 (425) 555-1212 or +56 (2) 687 2400. . | [optional] [default to null]
**phoneNumberVerified** | **bool** | True if the End-User&#39;s phne number has been verified; otherwise false. | [optional] [default to null]
**address** | [**AddressClaim**](AddressClaim.md) | End-user&#39;s address | [optional] [default to null]
**organization** | **String** | End-user&#39;s organization | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


