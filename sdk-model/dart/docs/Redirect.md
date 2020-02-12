# swagger.model.Redirect

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
**source** | **String** | The domain to be redirected. Enter the domain with or without \&quot;www\&quot;. | [optional] [default to null]
**target** | **String** | The URL of the target domain. Enter the domain without \&quot;http://\&quot; | [optional] [default to null]
**type** | [**RedirectTypeConstants**](RedirectTypeConstants.md) | Redirect type | [default to null]
**mode** | [**RedirectModeConstants**](RedirectModeConstants.md) | Redirect mode | [default to null]
**domain** | **String** | The domain, which the redirect belongs. | [optional] [default to null]
**title** | **String** | Lorem Ipsum | [optional] [default to null]
**backups** | **List&lt;String&gt;** | Lorem Ipsum | [optional] [default to []]
**sourceIdn** | **String** | The IDN version of the domain to be redirected. Enter the domain with or without \&quot;www\&quot;. | [optional] [default to null]
**targetIdn** | **String** | The IDN version of the URL of the target domain. Enter the domain without \&quot;http://\&quot; | [optional] [default to null]
**lastSeen** | [**DateTime**](DateTime.md) | The last dns connection. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


