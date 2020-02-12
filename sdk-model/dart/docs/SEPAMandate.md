# swagger.model.SEPAMandate

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | [**DateTime**](DateTime.md) | The created date. | [optional] [default to null]
**updated** | [**DateTime**](DateTime.md) | The updated date. | [optional] [default to null]
**reference** | **String** | The sepa mandate reference | [optional] [default to null]
**confirmSignature** | [**DateTime**](DateTime.md) | The date of the confirm signature | [default to null]
**confirmIp** | [**InetAddress**](InetAddress.md) | The address of the confirm signature | [default to null]
**confirmUseragent** | **String** | The user agent of the confirm signature | [optional] [default to null]
**confirmChecked** | **bool** | Flag for indicating if the confirm data has been checked | [default to null]
**expire** | [**DateTime**](DateTime.md) | Date after the mandate will be expired | [optional] [default to null]
**histories** | [**List&lt;SEPAMandate&gt;**](SEPAMandate.md) | A list of historized sepa mandates | [optional] [default to []]
**accountHolder** | **String** | The holder of the bank account | [optional] [default to null]
**iban** | **String** | The bank iban | [optional] [default to null]
**bic** | **String** | The bank bic | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


