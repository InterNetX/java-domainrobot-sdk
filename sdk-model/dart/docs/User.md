# swagger.model.User

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | [**DateTime**](DateTime.md) | The user created date. | [optional] [default to null]
**updated** | [**DateTime**](DateTime.md) | The user updated date. | [optional] [default to null]
**context** | **int** | The context. | [default to null]
**password** | **String** | The password. | [optional] [default to null]
**defaultEmail** | **String** | The default email. | [optional] [default to null]
**status** | **int** | The status. | [optional] [default to null]
**substatus** | **int** | The substatus. | [optional] [default to null]
**authType** | [**AuthType**](AuthType.md) | The users authorization method. | [optional] [default to null]
**details** | [**UserDetails**](UserDetails.md) | The user details. | [optional] [default to null]
**lock** | [**UserLock**](UserLock.md) | The lock status of the user. | [optional] [default to null]
**acls** | [**UserAcls**](UserAcls.md) | Wrapper for the user acls. | [optional] [default to null]
**profiles** | [**UserProfileViews**](UserProfileViews.md) | Wrapper for the user profiles. | [optional] [default to null]
**ancestors** | [**List&lt;BasicUser&gt;**](BasicUser.md) | The ancestors of the user. | [optional] [default to []]
**customer** | [**BasicCustomer**](BasicCustomer.md) | The customer belonging to the user. | [optional] [default to null]
**nameServerGroups** | [**List&lt;VirtualNameServerGroup&gt;**](VirtualNameServerGroup.md) | The available name server groups | [optional] [default to []]
**subscriptions** | [**List&lt;Subscription&gt;**](Subscription.md) | Wrapper for the subscriptions. | [optional] [default to []]
**applications** | [**List&lt;TrustedApplication&gt;**](TrustedApplication.md) | Holds the used applications. | [optional] [default to []]
**restrictions** | [**IpRestrictions**](IpRestrictions.md) | The wrapper of the ip restrictions for the user. | [optional] [default to null]
**user** | **String** | The user name. | [default to null]
**language** | **String** | The language. | [optional] [default to null]
**parent** | [**User**](User.md) | The parent. | [optional] [default to null]
**directCustomer** | **bool** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


