# swagger.model.Contact

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | [**DateTime**](DateTime.md) | The created date. | [optional] [default to null]
**updated** | [**DateTime**](DateTime.md) | The updated date. | [optional] [default to null]
**id** | **int** | The unique identifier of the contact | [optional] [default to null]
**owner** | [**BasicUser**](BasicUser.md) | The owner of the object. | [optional] [default to null]
**updater** | [**BasicUser**](BasicUser.md) | The updating user of the object. | [optional] [default to null]
**alias** | **String** | The unique alias of the contact | [optional] [default to null]
**type** | [**ContactTypeConstants**](ContactTypeConstants.md) | The type of the contact | [default to null]
**organization** | **String** | The name of the organization | [optional] [default to null]
**title** | **String** | The title of the contact | [optional] [default to null]
**city** | **String** | The city of the contact | [default to null]
**country** | **String** | The country of the contact | [default to null]
**state** | **String** | The local country state of the contact | [optional] [default to null]
**email** | **String** | The email of the contact | [optional] [default to null]
**protection** | [**ContactProtectionConstants**](ContactProtectionConstants.md) | The protection of the contact | [optional] [default to null]
**sip** | **String** | The sip of the contact | [optional] [default to null]
**remarks** | **List&lt;String&gt;** | The remarks of the contact | [optional] [default to []]
**domainsafe** | **bool** | The nic references of the contact | [optional] [default to null]
**confirmOwnerConsent** | **bool** | ??? | [optional] [default to null]
**comment** | **String** | The comment for the contact | [optional] [default to null]
**verification** | [**GenericStatusConstants**](GenericStatusConstants.md) | The verification status of the contact | [optional] [default to null]
**fname** | **String** | The first name of the contact | [optional] [default to null]
**lname** | **String** | The last name of the contact | [default to null]
**address** | **List&lt;String&gt;** | The address of the contact. | [default to []]
**pcode** | **String** | The pcode of the contact | [default to null]
**phone** | **String** | The phone number of the contact | [optional] [default to null]
**fax** | **String** | The fax number of the contact | [optional] [default to null]
**nicRef** | [**List&lt;ContactReference&gt;**](ContactReference.md) | The nic references of the contact | [optional] [default to []]
**extensions** | [**ContactExtensions**](ContactExtensions.md) | The contact extensions. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


