# swagger.model.SimplePrice

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **double** | The gross amount of the calculation | [optional] [default to null]
**netAmount** | **double** | The net amount of the calculation | [optional] [default to null]
**vatAmount** | **double** | The calculated vat amount | [optional] [default to null]
**currency** | **String** | The billing currency | [optional] [default to null]
**price** | [**ExchangedPrice**](ExchangedPrice.md) | The price. Note the currency can be differ from the billing currency | [optional] [default to null]
**businessCase** | **String** | The business case | [optional] [default to null]
**period** | [**TimePeriod**](TimePeriod.md) | The period for the price calculation | [optional] [default to null]
**customs** | [**List&lt;Custom&gt;**](Custom.md) | Custom values,such as price class | [optional] [default to []]
**view** | [**CurrencyRate**](CurrencyRate.md) | The currency rate for the view currency | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


