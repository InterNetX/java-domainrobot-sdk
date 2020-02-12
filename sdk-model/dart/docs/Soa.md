# swagger.model.Soa

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**refresh** | **int** | The seconds after the secondary should refresh the zone data | [optional] [default to null]
**retry** | **int** | The seconds after the secondary should retry the zone data after the refresh has been timeouts | [optional] [default to null]
**expire** | **int** | The seconds after the zone data will not be delievered, if the zone could not be reached on the master. | [optional] [default to null]
**ttl** | **int** |  | [optional] [default to null]
**email** | **String** | The email address of the responsible of the zone | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


