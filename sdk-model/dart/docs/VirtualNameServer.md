# swagger.model.VirtualNameServer

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
**active** | **bool** | Flag to show if the nameserver is active | [optional] [default to null]
**name** | [**Name**](Name.md) | Host name of the nameserver. | [optional] [default to null]
**mainAddress** | [**InetAddress**](InetAddress.md) | The mainAddress | [optional] [default to null]
**ipAddresses** | **List&lt;String&gt;** | The ip addresses. | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


