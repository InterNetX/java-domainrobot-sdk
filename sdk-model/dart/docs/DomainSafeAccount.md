# swagger.model.DomainSafeAccount

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
**updater** | [**BasicUser**](BasicUser.md) | The updating user of the object. | [optional] [default to null]
**name** | **String** | The name of the object. | [optional] [default to null]
**mobile** | [**Phone**](Phone.md) | The mobile of the object. | [default to null]
**pin** | **String** | The pin of the object. | [default to null]
**revalidationNumber** | [**Phone**](Phone.md) | The revalidationNumber of the object. | [optional] [default to null]
**safeuser** | [**List&lt;DomainSafeUser&gt;**](DomainSafeUser.md) | The safeUser of the object. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


