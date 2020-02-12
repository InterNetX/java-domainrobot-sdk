# swagger.model.CertificateData

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**plain** | **String** | The plain csr. | [optional] [default to null]
**name** | **String** | The common name. | [optional] [default to null]
**san** | **List&lt;String&gt;** | The subject alternative names, listed in the csr. | [optional] [default to []]
**histories** | [**List&lt;CertificateHistory&gt;**](CertificateHistory.md) | The certificate history. | [optional] [default to []]
**keySize** | **int** | The size of the csr key. | [optional] [default to null]
**countryCode** | **String** | The country code defined in the csr. | [optional] [default to null]
**challengePassword** | **String** | The password defined in the csr. | [optional] [default to null]
**state** | **String** | The state defined in the csr. | [optional] [default to null]
**city** | **String** | The city defined in the csr. | [optional] [default to null]
**organization** | **String** | The organization defined in the csr. | [optional] [default to null]
**organizationUnit** | **String** | The organization unit defined in the csr. | [optional] [default to null]
**email** | **String** | The email defined in the csr. | [optional] [default to null]
**product** | **String** | The ssl product. | [optional] [default to null]
**authentication** | [**List&lt;CertAuthentication&gt;**](CertAuthentication.md) | The authentication data. | [optional] [default to []]
**algorithm** | [**CsrHashAlgorithmConstants**](CsrHashAlgorithmConstants.md) | The csr algorithm. | [optional] [default to null]
**signatureHashAlgorithm** | [**SignatureHashAlgorithmConstants**](SignatureHashAlgorithmConstants.md) | The signature hash algorithm. | [optional] [default to null]
**idn** | **String** | The idn version of the common name. | [optional] [default to null]
**checkCaa** | **bool** | Activates the caa record check. | [optional] [default to null]
**businessCase** | **String** | Describes the business case (CREATE, RENEW, REISSUE, DELETE) for which preparation is to be performed. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


