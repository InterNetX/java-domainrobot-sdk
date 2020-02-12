# swagger.model.ResourceRecord

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the record. | [default to null]
**ttl** | **int** | TTL of the record (Optionally if not set then Default SOA TTL is used) | [optional] [default to null]
**type** | **String** | The type of the record, e.g. A | [optional] [default to null]
**value** | **String** | The value of the record. | [optional] [default to null]
**pref** | **int** | Preference of the record, need for some record types e.g. MX | [optional] [default to null]
**raw** | **String** | The bind notation of the record. Only used by the zone stream task! | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


