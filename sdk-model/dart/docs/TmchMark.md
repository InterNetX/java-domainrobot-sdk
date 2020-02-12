# swagger.model.TmchMark

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | [**DateTime**](DateTime.md) | The created date. | [optional] [default to null]
**updated** | [**DateTime**](DateTime.md) | The updated date. | [optional] [default to null]
**owner** | [**BasicUser**](BasicUser.md) | The owner of the object. | [optional] [default to null]
**updater** | [**BasicUser**](BasicUser.md) | The updater of the object. | [optional] [default to null]
**id** | **int** |  | [optional] [default to null]
**type** | [**TmchMarkTypeConstants**](TmchMarkTypeConstants.md) |  | [default to null]
**name** | **String** |  | [default to null]
**reference** | **String** |  | [default to null]
**holder** | [**TmchContact**](TmchContact.md) |  | [optional] [default to null]
**description** | **String** |  | [default to null]
**period** | [**TimePeriod**](TimePeriod.md) |  | [default to null]
**documents** | [**List&lt;TmchMarkDocument&gt;**](TmchMarkDocument.md) |  | [optional] [default to []]
**labels** | **List&lt;String&gt;** |  | [optional] [default to []]
**comments** | [**List&lt;TmchMarkComment&gt;**](TmchMarkComment.md) |  | [optional] [default to []]
**renew** | [**RenewStatusConstants**](RenewStatusConstants.md) |  | [optional] [default to null]
**status** | [**TmchMarkStatusConstants**](TmchMarkStatusConstants.md) |  | [optional] [default to null]
**payable** | [**DateTime**](DateTime.md) |  | [default to null]
**internalComment** | **String** |  | [optional] [default to null]
**sent** | **bool** |  | [optional] [default to null]
**smdInclusion** | **bool** |  | [default to null]
**claimsNotify** | **bool** |  | [default to null]
**smdFile** | **String** |  | [optional] [default to null]
**orderComplete** | **bool** |  | [optional] [default to null]
**claimsNotifyExtended** | **bool** |  | [optional] [default to null]
**extension** | [**TmchMarkAddon**](TmchMarkAddon.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


