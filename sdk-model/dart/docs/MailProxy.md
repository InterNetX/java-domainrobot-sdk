# swagger.model.MailProxy

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **String** | The domain of the mail exchange to backup | [default to null]
**idn** | **String** | The idn version of the domain. | [optional] [default to null]
**created** | [**DateTime**](DateTime.md) | The date of the creation | [optional] [default to null]
**updated** | [**DateTime**](DateTime.md) | The date of the last updated | [optional] [default to null]
**owner** | [**BasicUser**](BasicUser.md) | The owner of the entry | [optional] [default to null]
**updater** | [**BasicUser**](BasicUser.md) | The last updater of the entry | [optional] [default to null]
**target** | **String** | The hostname of the target mailserver | [default to null]
**admin** | **String** | email address of the administrator | [optional] [default to null]
**protection** | [**ProtectionConstants**](ProtectionConstants.md) | The protection level | [optional] [default to null]
**greylisting** | **bool** | The grey listing policy | [optional] [default to null]
**virus** | **String** | The virus options to use | [optional] [default to null]
**bannedFiles** | **String** | The banned files options to use | [optional] [default to null]
**header** | **String** | The mail header options to use | [optional] [default to null]
**spam** | [**SpamPolicy**](SpamPolicy.md) | The spam policy options | [optional] [default to null]
**whitelist** | [**MailList**](MailList.md) | The white listed email addresses | [optional] [default to null]
**blacklist** | [**MailList**](MailList.md) | The black listed email addresses | [optional] [default to null]
**excludelist** | [**MailList**](MailList.md) | The exculded listed email addresses | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


