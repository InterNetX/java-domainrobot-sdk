# swagger.model.VirtualNameServerGroup

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
**name** | **String** | The custom label for the group | [optional] [default to null]
**useDefaultIps** | **bool** | The useDefaultIps | [optional] [default to null]
**nameServers** | [**List&lt;VirtualNameServer&gt;**](VirtualNameServer.md) | The name servers of the group. | [optional] [default to []]
**systemNameServerGroup** | [**PhysicalNameServerGroup**](PhysicalNameServerGroup.md) | The custom label for the group | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


