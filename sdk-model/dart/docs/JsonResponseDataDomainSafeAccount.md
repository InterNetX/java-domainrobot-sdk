# swagger.model.JsonResponseDataDomainSafeAccount

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**stid** | **String** | The server transaction id for the response. | [optional] [default to null]
**messages** | [**List&lt;Message&gt;**](Message.md) | The messages belonging to the response. | [optional] [default to []]
**status** | [**ResponseStatus**](ResponseStatus.md) | The status of the response. | [optional] [default to null]
**object** | [**ResponseObject**](ResponseObject.md) | The object of the response. | [optional] [default to null]
**data** | [**List&lt;DomainSafeAccount&gt;**](DomainSafeAccount.md) | The data for the response. The type of the objects are depending on the request and are also specified in the responseObject value of the response. | [optional] [default to []]
**ctid** | **String** | The client transaction id for the response. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


