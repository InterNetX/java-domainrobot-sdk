# swagger.model.ContactAuExtensions

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**eligibilityId** | **String** | The corresponding ID number for the eligibility name if applicable, if in doubt just use the same details as your Registrant ID. | [optional] [default to null]
**eligibilityIdType** | [**AuEligibilityIdTypeConstants**](AuEligibilityIdTypeConstants.md) | The type of Eligibility ID. | [optional] [default to null]
**eligibilityName** | **String** |  This field is usually optional and whether it is required is determined by your policy reason for the domain registration, if in doubt just use the same details as your Registrant Name. | [optional] [default to null]
**eligibilityType** | [**AuEligibilityTypeConstants**](AuEligibilityTypeConstants.md) | The type of entity that the registrant is. | [optional] [default to null]
**policyReason** | **int** | Reason for eligibility. | [optional] [default to null]
**registrantId** | **String** | Australian Business Number or Registered Business Number. | [optional] [default to null]
**registrantIdType** | [**AuRegistrantIdTypeConstants**](AuRegistrantIdTypeConstants.md) | Concerns the Registrant ID which you have selected in the Registrant ID form field. | [optional] [default to null]
**registrantName** | **String** | The registrants name. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


