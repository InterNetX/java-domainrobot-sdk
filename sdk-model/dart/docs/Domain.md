# swagger.model.Domain

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
**name** | **String** | The name of the domain. | [default to null]
**idn** | **String** | The unicode domain name | [optional] [default to null]
**nicMemberLabel** | **String** | The nic member label. | [optional] [default to null]
**registryStatus** | [**RegistryStatusConstants**](RegistryStatusConstants.md) | The registry status. | [optional] [default to null]
**nameServers** | [**List&lt;NameServer&gt;**](NameServer.md) | The nameservers. | [optional] [default to []]
**nameServerEntries** | **List&lt;String&gt;** | NSentry is only be provided for .DE. If NSentry is used, nameServers is not allowed. | [optional] [default to []]
**period** | [**TimePeriod**](TimePeriod.md) | The renew period in years. | [optional] [default to null]
**trustee** | **bool** | Enable trustee service for the domain. | [optional] [default to null]
**privacy** | **bool** | Enable privacy service for the domain. | [optional] [default to null]
**authinfo** | **String** | The authinfo. | [optional] [default to null]
**domainsafe** | **bool** | Enable domainsafe. | [optional] [default to null]
**parking** | [**ParkingProviderConstants**](ParkingProviderConstants.md) | The parking provider. | [optional] [default to null]
**extensions** | [**DomainExtensions**](DomainExtensions.md) | The domain extensions. | [optional] [default to null]
**logId** | **int** | The logId | [optional] [default to null]
**nsCheck** | [**DNSCheck**](DNSCheck.md) | An additional nameserver check will be carried out. | [optional] [default to null]
**confirmOrder** | **bool** | Some TLDs require a confirmation of the “Terms and Conditions of Registration. | [optional] [default to null]
**confirmOwnerConsent** | **bool** | Confirms the consent of the domainowner for the changes. Required for gTLDs and new gTLDs when changing the name, the email address or the organization of the domain owner. | [optional] [default to null]
**ignoreWhois** | **bool** | Ignore whois. | [optional] [default to null]
**comment** | **String** | A custom field. Can only be updated via PUT /domain/{name}/_comment. Requires appropriate ACLs. | [optional] [default to null]
**includeWWW** | **bool** | Enable utomatic creation of the www subdomain. | [optional] [default to null]
**includeWildcard** | **bool** | Enable include wildcard. | [optional] [default to null]
**registrarStatus** | [**RegistryStatusConstants**](RegistryStatusConstants.md) | The registrar status. | [optional] [default to null]
**registrarStatusReason** | **String** | The registrar status reason. | [optional] [default to null]
**removeCancelation** | **bool** | Remove cancelation. | [default to null]
**autodnsSecJob** | [**DNSSecJob**](DNSSecJob.md) | AutodnsSecJob | [optional] [default to null]
**priceClass** | **String** | The priceclass for the registration of the domain. | [optional] [default to null]
**priceClassRenew** | **String** | The priceclass for the renew of the domain. | [optional] [default to null]
**abuseEmail** | **String** | The abuse email. | [optional] [default to null]
**generalRequestEmail** | **String** | The general request mail. | [optional] [default to null]
**privacyPlusMail** | **String** | The privacy plus mail. | [optional] [default to null]
**privacyPlus** | **bool** | Enable privacy plus. | [optional] [default to null]
**nameServerGroup** | **String** | The nameserver group. | [optional] [default to null]
**rddsOptIn** | [**RddsOptInConstants**](RddsOptInConstants.md) | Enables the whois output to show redacted contacts. | [optional] [default to null]
**servicesAdd** | [**DomainServices**](DomainServices.md) | Adds pending services like BackupMX and MailProxy. | [optional] [default to null]
**servicesRem** | [**DomainServices**](DomainServices.md) | Removes pending services like BackupMX and MailProxy. | [optional] [default to null]
**ownerc** | [**Contact**](Contact.md) | The owner contact. | [optional] [default to null]
**adminc** | [**Contact**](Contact.md) | The administrative contact. | [optional] [default to null]
**techc** | [**Contact**](Contact.md) | The technical contact reference. | [optional] [default to null]
**zonec** | [**Contact**](Contact.md) | The dns contact. | [optional] [default to null]
**expire** | [**DateTime**](DateTime.md) | The expire date of the domain. | [optional] [default to null]
**payable** | [**DateTime**](DateTime.md) | The payable date of the domain. | [default to null]
**action** | [**DomainActionConstants**](DomainActionConstants.md) | The last action. | [optional] [default to null]
**autoDnssec** | **bool** | Enables or disables automatic DNSSEC for certain name servers (e.g. NodeSecure). | [optional] [default to null]
**dnssec** | **bool** | Indicates whether DNSSEC is enabled for the domain or not. | [optional] [default to null]
**validCertificate** | **bool** | Domain has an matching certificate. | [optional] [default to null]
**cancelationStatus** | [**CancelationStatusConstants**](CancelationStatusConstants.md) | The cancelation status. | [optional] [default to null]
**autoRenewStatus** | [**AutoRenewStatusConstants**](AutoRenewStatusConstants.md) | The autorenew status. | [optional] [default to null]
**dnssecData** | [**List&lt;DNSSec&gt;**](DNSSec.md) | Submits the key material to the registry. If the list is empty, the key material is deleted at the registry. If the key is omitted during an update, the data is retained. | [optional] [default to []]
**zone** | [**Zone**](Zone.md) | The zone to create. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


