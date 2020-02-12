# swagger.model.PollMessage

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The message id. | [optional] [default to null]
**owner** | [**BasicUser**](BasicUser.md) | The owner of the message. | [optional] [default to null]
**job** | [**WorkflowSpool**](WorkflowSpool.md) | The job data. Available if the message is a job message | [optional] [default to null]
**notify** | [**NotifyMessage**](NotifyMessage.md) | The notification data. Available if the message is a notification message | [optional] [default to null]
**stid** | **String** | The server transaction id. | [optional] [default to null]
**ctid** | **String** | the custom transaction id. | [optional] [default to null]
**messages** | [**List&lt;Message&gt;**](Message.md) | The general localized messages. | [optional] [default to []]
**flags** | **String** | Optional message flags. | [optional] [default to null]
**created** | [**DateTime**](DateTime.md) | The created date. | [optional] [default to null]
**object** | [**ResponseObject**](ResponseObject.md) | The object of the job or notify. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


