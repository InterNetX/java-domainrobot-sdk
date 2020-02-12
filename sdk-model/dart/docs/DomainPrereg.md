# swagger.model.DomainPrereg

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
**ownerc** | [**Contact**](Contact.md) | The owner contact. | [optional] [default to null]
**adminc** | [**Contact**](Contact.md) | The administrative contact. | [optional] [default to null]
**techc** | [**Contact**](Contact.md) | The technical contact reference. | [optional] [default to null]
**zonec** | [**Contact**](Contact.md) | The dns contact. | [optional] [default to null]
**name** | **String** | The name of the domain. | [optional] [default to null]
**authinfo** | **String** | The authinfo. | [optional] [default to null]
**nameServers** | [**List&lt;NameServer&gt;**](NameServer.md) | The nameservers. | [optional] [default to []]
**nameServerEntries** | **List&lt;String&gt;** | The nameserver entries. | [optional] [default to []]
**status** | [**DomainPreregStatusConstants**](DomainPreregStatusConstants.md) | The preregistration status of the domain. | [optional] [default to null]
**extension** | [**DomainPreregAddon**](DomainPreregAddon.md) | The preregistration extensions. | [optional] [default to null]
**orderReference** | **String** | The unique order reference. | [optional] [default to null]
**tmchMark** | [**TmchMark**](TmchMark.md) | The tmchmark. | [optional] [default to null]
**preregConfig** | [**PreregConfig**](PreregConfig.md) | The preregistration configuration. | [optional] [default to null]
**idn** | **String** | The idn version of the name. | [optional] [default to null]
**confirmed** | [**DateTime**](DateTime.md) | The confirmation date. | [optional] [default to null]
**trustee** | **bool** | Trustee active or not. | [optional] [default to null]
**domainCreated** | [**DateTime**](DateTime.md) | The domain created date. | [optional] [default to null]
**domainExpire** | [**DateTime**](DateTime.md) | The domain expire date. | [optional] [default to null]
**registryStatus** | [**RegistryStatusConstants**](RegistryStatusConstants.md) | The registry status. | [optional] [default to null]
**recommended** | **bool** | Recommended | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


