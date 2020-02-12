# swagger.model.Zone

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | [**DateTime**](DateTime.md) | The created date. | [optional] [default to null]
**updated** | [**DateTime**](DateTime.md) | The updated date. | [optional] [default to null]
**origin** | **String** | Zone name | [default to null]
**idn** | **String** | The idn version of the origin. | [optional] [default to null]
**soa** | [**Soa**](Soa.md) | Only for ns_action: \&quot;primary\&quot;  and \&quot;complete\&quot; | [optional] [default to null]
**dnssec** | **bool** | Enables dnssec | [optional] [default to null]
**nameServerGroup** | **String** | The name of the name server group, if the zone is managed by | [optional] [default to null]
**allowTransfer** | **bool** | Allow AXFR | [optional] [default to null]
**owner** | [**BasicUser**](BasicUser.md) | The owner of the object | [optional] [default to null]
**updater** | [**BasicUser**](BasicUser.md) | The updating user of the object | [optional] [default to null]
**logId** | **int** | The id of the related log-entry. | [optional] [default to null]
**comment** | **String** | A custom field. Can only be updated via PUT /zone/{name}/{nameserver}/_comment. Requires appropriate ACLs. | [optional] [default to null]
**domainsafe** | **bool** | true if the domain is represented in the domain safe | [optional] [default to null]
**source** | **String** | Nameserver, the zone is copied from via AXFR (for zone_import) | [optional] [default to null]
**sourceVirtualHostname** | **String** | System name server to look up the zone to copy | [optional] [default to null]
**nameServers** | [**List&lt;NameServer&gt;**](NameServer.md) | List of name servers | [optional] [default to []]
**main** | [**MainIp**](MainIp.md) | IP address of the zone (A record) | [optional] [default to null]
**wwwInclude** | **bool** | Automatic generation of resource records \&quot;www\&quot; | [optional] [default to null]
**virtualNameServer** | **String** | The first nameserver managed by the system | [optional] [default to null]
**freeText** | **List&lt;String&gt;** | The free text records. | [optional] [default to []]
**action** | [**NameserverActionConstants**](NameserverActionConstants.md) | Additional nameserver check is proceeded | [optional] [default to null]
**grants** | **List&lt;String&gt;** | The grants where transfer (axfr) can be done from. | [optional] [default to []]
**resourceRecords** | [**List&lt;ResourceRecord&gt;**](ResourceRecord.md) | The resource records. | [optional] [default to []]
**roid** | **int** | The resource object identifier of the zone | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


