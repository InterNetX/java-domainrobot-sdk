# swagger.model.UserAcl

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**functionCode** | **String** | The function code to restrict | [optional] [default to null]
**children** | [**List&lt;BasicUser&gt;**](BasicUser.md) | The none locked children | [optional] [default to []]
**childrenLocked** | **bool** | The children lock | [optional] [default to null]
**userLocked** | **bool** | The user lock | [optional] [default to null]
**effective** | **bool** | The current active lock for the user | [optional] [default to null]
**childrenRem** | [**List&lt;BasicUser&gt;**](BasicUser.md) | Children to remove from the exception list | [optional] [default to []]
**childrenAdd** | [**List&lt;BasicUser&gt;**](BasicUser.md) | Children to add to the exception list | [optional] [default to []]
**restriction** | [**ACLRestriction**](ACLRestriction.md) | The human readable restriction mode | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


