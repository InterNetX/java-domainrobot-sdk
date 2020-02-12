# swagger.model.CertAuthentication

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The domain name the authentication data belongs to. | [optional] [default to null]
**method** | [**AuthMethodConstants**](AuthMethodConstants.md) | The authentication method. | [optional] [default to null]
**dns** | **String** | The dns entry for dns based authentication. | [optional] [default to null]
**fileName** | **String** | The filename for file based authentication. | [optional] [default to null]
**fileContent** | **String** | The content for file based authentication. | [optional] [default to null]
**approverEmails** | **List&lt;String&gt;** | The approver addresses for email based authentication. | [optional] [default to []]
**provisioning** | **bool** | Activates automatic provisioning of the zone for dns based authentication. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


