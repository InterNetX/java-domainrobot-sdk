# swagger.model.DomainMonitoring

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
**name** | **String** | The name of the domain. | [default to null]
**idn** | **String** | The idn version of the domain. | [optional] [default to null]
**notificationMobiles** | [**List&lt;Phone&gt;**](Phone.md) | The notification mobile phone numbers. | [optional] [default to []]
**ocval** | **bool** | The ocval | [optional] [default to null]
**cancelation** | **bool** | The cancelation | [optional] [default to null]
**removed** | **bool** | The removed | [optional] [default to null]
**monitoringSetups** | [**List&lt;DomainMonitoringSetup&gt;**](DomainMonitoringSetup.md) | The monitoringSetups | [optional] [default to []]
**notificationEmails** | **List&lt;String&gt;** | The notification email-addresses. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


