# swagger.model.Id4meIdentity

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
**agent** | [**Id4MeAgent**](Id4MeAgent.md) | The ID4ME agent | [default to null]
**verifyExpire** | [**DateTime**](DateTime.md) | Expiration of verification | [optional] [default to null]
**addons** | [**Configuration**](Configuration.md) | Additional information | [optional] [default to null]
**magicLink** | **String** | The generated magic link | [optional] [default to null]
**claims** | [**Claims**](Claims.md) | The initial claims | [optional] [default to null]
**showClaims** | **bool** | Enables showing claims. | [optional] [default to null]
**resetUrl** | **String** | Url to redirect to passwort reset | [optional] [default to null]
**resetUrlExpire** | [**DateTime**](DateTime.md) | time when reset url expire | [optional] [default to null]
**name** | **String** | Fully qualified domain name | [optional] [default to null]
**status** | [**IdentityStatus**](IdentityStatus.md) | status | [optional] [default to null]
**language** | **String** | The language. | [default to null]
**record** | **List&lt;String&gt;** | DNS text records | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


