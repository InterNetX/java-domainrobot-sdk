# swagger.model.DomainStudioSourceSuggestion

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**services** | [**List&lt;DomainEnvelopeSearchService&gt;**](DomainEnvelopeSearchService.md) | The services to fetch extra data from for this source | [optional] [default to []]
**language** | **String** | Suggestion language | [optional] [default to null]
**max** | **int** | Maximum fetched suggested domains | [optional] [default to null]
**maxSldLength** | **int** | Maximum sld length for suggested domains | [optional] [default to null]
**useDash** | **bool** | Suggested domains with dash | [optional] [default to null]
**useNumber** | **bool** | Suggested domains with numbers | [optional] [default to null]
**useIdn** | **bool** | Suggested domains with idn | [optional] [default to null]
**tlds** | **List&lt;String&gt;** | Selected tlds | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


