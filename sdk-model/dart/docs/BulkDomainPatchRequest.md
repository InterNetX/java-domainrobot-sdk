# swagger.model.BulkDomainPatchRequest

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**objects** | [**List&lt;Domain&gt;**](Domain.md) | The objects to process | [optional] [default to []]
**template** | [**Domain**](Domain.md) | The template for objects to process | [optional] [default to null]
**query** | [**Query**](Query.md) | The query to fetch the object instead of defined list | [optional] [default to null]
**modifiers** | [**List&lt;Modifier&gt;**](Modifier.md) | The modifer to apply on the objects | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


