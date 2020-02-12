# swagger.model.Id4MeAgent

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
**externalReference** | **String** | External reference | [optional] [default to null]
**certificate** | [**VhostCertificate**](VhostCertificate.md) | Virtual host with certificate data | [optional] [default to null]
**layoutAddon** | [**Configuration**](Configuration.md) | Layout properties | [optional] [default to null]
**name** | **String** | Fully qualified domain name | [default to null]
**status** | [**Id4MeAgentStatus**](Id4MeAgentStatus.md) | Agent status | [optional] [default to null]
**records** | **List&lt;String&gt;** | List of dns text records | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


