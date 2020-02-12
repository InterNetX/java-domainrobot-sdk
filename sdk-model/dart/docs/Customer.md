# swagger.model.Customer

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number** | **int** |  | [default to null]
**client** | **String** |  | [default to null]
**group** | **int** |  | [optional] [default to null]
**name** | **String** | The name of the customer. | [default to null]
**organization** | **String** | The name of the organization. | [optional] [default to null]
**vatNumber** | **String** | The value added tax number. | [optional] [default to null]
**gender** | [**GenderConstants**](GenderConstants.md) | The gender of the person. | [optional] [default to null]
**title** | **String** | The title of the customer | [optional] [default to null]
**addressLines** | **List&lt;String&gt;** | The address of the customer | [default to []]
**city** | **String** | The city of the customer. | [default to null]
**state** | **String** | The state of the customer. | [optional] [default to null]
**country** | **String** | The country of the customer. | [default to null]
**phone** | **String** | The phone number of the customer | [optional] [default to null]
**fax** | [**Phone**](Phone.md) | The fax number. | [optional] [default to null]
**emails** | **List&lt;String&gt;** | The email addresses. | [optional] [default to []]
**billingEmails** | **List&lt;String&gt;** | The billing recipients. | [optional] [default to []]
**payment** | [**PaymentConstants**](PaymentConstants.md) | The payment typ of the customer. | [default to null]
**paymentMode** | **String** | The payment mode of the customer. | [optional] [default to null]
**paymentCurrency** | [**Currency**](Currency.md) | The payment currency of the customer. | [optional] [default to null]
**invoiceLanguage** | **String** | The language to use for the invoice. | [optional] [default to null]
**taxable** | **bool** | The taxable flag of the customer. | [optional] [default to null]
**card** | [**Card**](Card.md) | The customers minimal credit card data if payament was post with credit card. | [optional] [default to null]
**contracts** | [**List&lt;CustomerContract&gt;**](CustomerContract.md) | The customers contracts. | [optional] [default to []]
**billingUsers** | [**List&lt;BasicUser&gt;**](BasicUser.md) | The billing users. | [optional] [default to []]
**account** | [**Account**](Account.md) | The account of the customer in case of prepayment or if the customer has a credit limit | [optional] [default to null]
**clearAccount** | [**ClearAccountPeriod**](ClearAccountPeriod.md) | The period after the post payment account will be cleared to zero | [optional] [default to null]
**fname** | **String** | The first name. | [optional] [default to null]
**lname** | **String** | The last name. | [optional] [default to null]
**pcode** | **String** | The postal code of the city. | [default to null]
**sepa** | [**SEPAMandate**](SEPAMandate.md) | The customers sepa mandate if payament was post with sepa. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


