# swagger.model.TrustedApplication

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
**updater** | [**BasicUser**](BasicUser.md) | The updating user of the object. | [optional] [default to null]
**user** | [**BasicUser**](BasicUser.md) | The user the trusted application belongs to. | [optional] [default to null]
**uuid** | **String** | The unique identifier for the trusted application. | [default to null]
**password** | **String** | The password for the trusted application. | [optional] [default to null]
**application** | [**Application**](Application.md) | The kind of application. | [default to null]
**functions** | [**TrustedApplicationFunctions**](TrustedApplicationFunctions.md) | The wrapper of the allowed functions for the trusted application. | [optional] [default to null]
**restrictions** | [**IpRestrictions**](IpRestrictions.md) | The wrapper of the ip restrictions for the trusted application. | [optional] [default to null]
**device** | **String** | The device, which uses the trusted app. | [optional] [default to null]
**comment** | **String** | A comment for the trusted application. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


