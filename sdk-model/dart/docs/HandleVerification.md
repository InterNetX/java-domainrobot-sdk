# swagger.model.HandleVerification

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
**reference** | **String** | the reference of the Verification | [optional] [default to null]
**messageSend** | [**DateTime**](DateTime.md) | the messageSend date of the Verification | [optional] [default to null]
**confirmed** | [**DateTime**](DateTime.md) | the confirmed date of the Verification | [optional] [default to null]
**confirmIp** | [**InetAddress**](InetAddress.md) | the confirmIp of the Verification | [default to null]
**failed** | [**DateTime**](DateTime.md) | the failed date of the Verification | [optional] [default to null]
**domain** | [**List&lt;ContactVerificationDomain&gt;**](ContactVerificationDomain.md) | the domains of the Verification | [optional] [default to []]
**verificationMail** | [**List&lt;ContactVerificationMessage&gt;**](ContactVerificationMessage.md) | the messages of the Verification | [optional] [default to []]
**comment** | **String** | the comment of the Verification | [optional] [default to null]
**action** | **String** | the action of the Verification | [optional] [default to null]
**handle** | [**Contact**](Contact.md) | the contact of the Verification | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


