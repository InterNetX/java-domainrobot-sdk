# swagger.model.OTPAuth

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
**protocolType** | [**ProtocolTypeConstants**](ProtocolTypeConstants.md) | The type of protocol | [default to null]
**algorithm** | [**CryptoFormatConstants**](CryptoFormatConstants.md) | Crypto algorithm | [default to null]
**timeout** | **int** | Timeout in seconds | [default to null]
**digits** | **int** | The length of the token | [default to null]
**secret** | **String** | Base32 encoded shared secret. | [optional] [default to null]
**tokens** | **List&lt;String&gt;** | The generated support &#39;tokens&#39;. | [optional] [default to []]
**qrCode** | [**BasicDocument**](BasicDocument.md) | The generated qr code png. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


