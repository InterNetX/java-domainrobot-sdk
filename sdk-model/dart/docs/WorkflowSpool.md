# swagger.model.WorkflowSpool

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
**status** | [**JobStatusConstants**](JobStatusConstants.md) | The status of the job. | [optional] [default to null]
**subStatus** | **String** | The substatus of the job. | [optional] [default to null]
**execution** | [**DateTime**](DateTime.md) | The next execution date of the job. | [optional] [default to null]
**id** | **int** | The job id. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


