part of swagger.api;

class AccountingDocumentTypeConstants {
  /// The underlying value of this enum member.
  String value;

  AccountingDocumentTypeConstants._internal(this.value);

  static AccountingDocumentTypeConstants iNVOICE_ = AccountingDocumentTypeConstants._internal("INVOICE");
  static AccountingDocumentTypeConstants cREDIT_ = AccountingDocumentTypeConstants._internal("CREDIT");
  static AccountingDocumentTypeConstants rEFUND_ = AccountingDocumentTypeConstants._internal("REFUND");
  static AccountingDocumentTypeConstants cANCELED_ = AccountingDocumentTypeConstants._internal("CANCELED");
  static AccountingDocumentTypeConstants cHARGE_ = AccountingDocumentTypeConstants._internal("CHARGE");

  AccountingDocumentTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "INVOICE": value = data; break;
          case "CREDIT": value = data; break;
          case "REFUND": value = data; break;
          case "CANCELED": value = data; break;
          case "CHARGE": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(AccountingDocumentTypeConstants data) {
    return data.value;
  }
}

