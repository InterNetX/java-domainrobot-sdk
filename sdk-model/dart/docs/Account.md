# swagger.model.Account

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer** | [**GenericCustomer**](GenericCustomer.md) | The customer itself | [default to null]
**currentAccountBalance** | **double** | The real account balance | [optional] [default to null]
**runningTotal** | **double** | The current total, the amount of all finished and unfinished transactions | [optional] [default to null]
**creditLimit** | **double** | The credit limit of the account. | [optional] [default to null]
**currency** | **String** | The currency of the account | [optional] [default to null]
**minRunningTotalNotification** | **double** | The minimum running total amount if a notification should be send | [optional] [default to null]
**minRunningTotalNotificationEmail** | **String** | The recipient of the notification limit email | [optional] [default to null]
**created** | [**DateTime**](DateTime.md) | The date of the acccount creation | [optional] [default to null]
**updated** | [**DateTime**](DateTime.md) | The date of the las update. | [optional] [default to null]
**view** | [**CurrencyRate**](CurrencyRate.md) | The selected exchange for the account | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


