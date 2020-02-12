# swagger.model.AddressClaim

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**formatted** | **String** | Full mailing address, formatted for display or use on a mailing label. This field MAY contain multiple lines, separated by newlines. Newlines can be represented either as a carriage return/line feed pair (\&quot;\\r\\n\&quot;) or as a single line feed character (\&quot;\\n\&quot;) | [optional] [default to null]
**streetAddress** | **String** | Full street address component, which MAY include house number, street name, Post Office Box, and multi-line extended street address information. This field MAY contain multiple lines, separated by newlines. Newlines can be represented either as a carriage return/line feed pair (\&quot;\\r\\n\&quot;) or as a single line feed character (\&quot;\\n\&quot;) | [optional] [default to null]
**locality** | **String** | City or locality component | [optional] [default to null]
**region** | **String** | State, province, prefecture, or region component | [optional] [default to null]
**postalCode** | **String** | Zip code or postal code component | [optional] [default to null]
**country** | **String** | Country name component | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


