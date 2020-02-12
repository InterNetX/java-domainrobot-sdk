# swagger.model.Certificate

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
**extension** | [**ExtendedValidationExtension**](ExtendedValidationExtension.md) | The certificate extensions for comodo. | [optional] [default to null]
**id** | **int** | The ID of the certificate | [optional] [default to null]
**partnerOrderId** | **String** | The order number of the related request | [optional] [default to null]
**orderId** | **String** | The unique certificate order number | [optional] [default to null]
**adminContact** | [**SslContact**](SslContact.md) | The administrative contact | [optional] [default to null]
**technicalContact** | [**SslContact**](SslContact.md) | The technical contact | [optional] [default to null]
**name** | **String** | The name of the certificate | [optional] [default to null]
**lifetime** | [**TimePeriod**](TimePeriod.md) | The certificate term in months | [default to null]
**software** | [**ServerSoftwareTypeConstants**](ServerSoftwareTypeConstants.md) | The webserver software in use, relevant values: &#39;II5&#39; for Mircosoft, &#39;APACHE2&#39; for Linux | [default to null]
**comment** | **String** | A custom field. Can only be updated via PUT /certificate/{id}/_comment. Requires appropriate ACLs. | [optional] [default to null]
**csr** | **String** | CSR - Key (Certificate Signing Request) | [optional] [default to null]
**server** | **String** | The certificate | [optional] [default to null]
**serialNumber** | **String** | Serial number of the certificate | [optional] [default to null]
**product** | **String** | The ordered product | [default to null]
**codeSigningType** | [**CodeSigningType**](CodeSigningType.md) | The type of code signing | [optional] [default to null]
**certificateType** | [**CertificateType**](CertificateType.md) | The type of the certificate | [optional] [default to null]
**signatureHashAlgorithm** | [**SignatureHashAlgorithmConstants**](SignatureHashAlgorithmConstants.md) | The signature hash algorithm which was used | [optional] [default to null]
**expire** | [**DateTime**](DateTime.md) | The date on which the certificate expires | [optional] [default to null]
**subjectAlternativeNames** | [**List&lt;SubjectAlternativeName&gt;**](SubjectAlternativeName.md) | Subject Alternative Names (SANs) | [optional] [default to []]
**histories** | [**List&lt;CertificateHistory&gt;**](CertificateHistory.md) | The history of the certificate (old certificate versions) | [optional] [default to []]
**certificationAuthority** | [**List&lt;CaCertificate&gt;**](CaCertificate.md) | The certificate authority chain | [optional] [default to []]
**password** | **String** | The password that is to be used for the certificate download. Only for S/MIME! | [optional] [default to null]
**firstname** | **String** | First Name. Only for S/MIME! | [optional] [default to null]
**lastname** | **String** | Last Name. Only for S/MIME! | [optional] [default to null]
**technicalContactEmail** | **String** | The technical contact email address. Only used in realtime orders! | [optional] [default to null]
**organizationUnitName** | **String** | The organization unit. Only for S/MIME! | [optional] [default to null]
**authentication** | [**CertAuthentication**](CertAuthentication.md) | The authentication of the certificate | [optional] [default to null]
**certificateTransparency** | **bool** | Activates the certificate transparency for a certificate. Default is \&quot;True\&quot;. | [optional] [default to null]
**certificateTransparencyPrivacy** | [**CertificateTransparencyPrivacyConstants**](CertificateTransparencyPrivacyConstants.md) | The privacy settings for certificate transparency. Default is \&quot;Redacted\&quot;. | [optional] [default to null]
**domain** | **String** | The domain, which the redirect belongs. | [optional] [default to null]
**hasCsr** | **bool** | States if a self created CSR is to be used for S/MIME. Default is false. Only for S/MIME! | [optional] [default to null]
**idn** | **String** | The IDN version of the URL of the target domain. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


