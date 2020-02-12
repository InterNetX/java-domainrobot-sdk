# swagger.model.Subscription

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
**status** | [**BillingStatus**](BillingStatus.md) | The actual status of the entry, active means ok. | [optional] [default to null]
**object** | **String** | The name of the subscription, e.g. the contract number | [optional] [default to null]
**description** | **String** | The human readable name of the subscription, e.g. the name of a package | [optional] [default to null]
**period** | [**TimePeriod**](TimePeriod.md) | The period used by the subscription, e.g. 1 month | [optional] [default to null]
**articleTypeLabel** | **String** | The article type label of the subscription, e.g. domain | [optional] [default to null]
**articleLabel** | **String** | The article label of the subscription, e.g. backup_mx | [optional] [default to null]
**item** | [**List&lt;PeriodicBilling&gt;**](PeriodicBilling.md) | The items of the subscription | [optional] [default to []]
**limits** | [**List&lt;BillingObjectLimit&gt;**](BillingObjectLimit.md) | The limits of the package. | [optional] [default to []]
**acls** | [**List&lt;UserAcl&gt;**](UserAcl.md) | The acls of the package | [optional] [default to []]
**variant** | **String** | The name variant, e.g nodesecure | [optional] [default to null]
**businessCase** | **String** | The businessCase of the subscription, e.g. create | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


