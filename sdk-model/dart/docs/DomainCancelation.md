# swagger.model.DomainCancelation

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
**domain** | **String** |  | [default to null]
**registryWhen** | [**DateTime**](DateTime.md) | The date of the execution. Only necessary when ExecutionType equals DATE. | [default to null]
**gainingRegistrar** | **String** |  | [optional] [default to null]
**disconnect** | **bool** |  | [optional] [default to null]
**notice** | **String** | Some remarks | [optional] [default to null]
**logId** | **int** |  | [optional] [default to null]
**registryStatus** | [**RegistryStatusConstants**](RegistryStatusConstants.md) |  | [optional] [default to null]
**type** | [**CancelationTypeConstants**](CancelationTypeConstants.md) | The cancelation type. TRANSIT is only possible for certain TLDs. | [default to null]
**execution** | [**ExecutionTypeConstants**](ExecutionTypeConstants.md) | The execution type. | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


