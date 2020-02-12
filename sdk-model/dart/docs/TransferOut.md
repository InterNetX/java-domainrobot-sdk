# swagger.model.TransferOut

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
**domain** | **String** | The domain name. | [default to null]
**gainingRegistrar** | **String** | The gaining registrar. | [optional] [default to null]
**loosingRegistrar** | **String** | The loosing registrar. | [optional] [default to null]
**start** | [**DateTime**](DateTime.md) | The start date. | [optional] [default to null]
**reminder** | [**DateTime**](DateTime.md) | The reminder date. | [optional] [default to null]
**autoAck** | [**DateTime**](DateTime.md) | The auto ack date. | [optional] [default to null]
**autoNack** | [**DateTime**](DateTime.md) | The auto nack date. | [optional] [default to null]
**end** | [**DateTime**](DateTime.md) | The end date. | [optional] [default to null]
**autoAnswer** | **bool** | Autoanswer active. | [optional] [default to null]
**recipient** | **String** | The recipient. | [optional] [default to null]
**mailserver** | **String** | The mailserver. | [optional] [default to null]
**deliveredMailserver** | **String** | The delivered mailserver. | [optional] [default to null]
**delivered** | [**DateTime**](DateTime.md) | The delivered date. | [optional] [default to null]
**transaction** | **String** | The ctid. | [optional] [default to null]
**type** | [**TransferAnswer**](TransferAnswer.md) | The type of the transfer. | [default to null]
**nackReason** | **int** | The reason. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


