part of swagger.api;

class InvoiceStatusConstants {
  /// The underlying value of this enum member.
  String value;

  InvoiceStatusConstants._internal(this.value);

  static InvoiceStatusConstants cREATED_ = InvoiceStatusConstants._internal("CREATED");
  static InvoiceStatusConstants sIGNED_ = InvoiceStatusConstants._internal("SIGNED");
  static InvoiceStatusConstants sENT_ = InvoiceStatusConstants._internal("SENT");
  static InvoiceStatusConstants rESEND_ = InvoiceStatusConstants._internal("RESEND");
  static InvoiceStatusConstants fINISHED_ = InvoiceStatusConstants._internal("FINISHED");
  static InvoiceStatusConstants lIVECONFIRMED_ = InvoiceStatusConstants._internal("LIVECONFIRMED");
  static InvoiceStatusConstants lIVEPENDING_ = InvoiceStatusConstants._internal("LIVEPENDING");
  static InvoiceStatusConstants pOSTPENDING_ = InvoiceStatusConstants._internal("POSTPENDING");
  static InvoiceStatusConstants pOSTCONFIRMED_ = InvoiceStatusConstants._internal("POSTCONFIRMED");

  InvoiceStatusConstants.fromJson(dynamic data) {
    switch (data) {
          case "CREATED": value = data; break;
          case "SIGNED": value = data; break;
          case "SENT": value = data; break;
          case "RESEND": value = data; break;
          case "FINISHED": value = data; break;
          case "LIVECONFIRMED": value = data; break;
          case "LIVEPENDING": value = data; break;
          case "POSTPENDING": value = data; break;
          case "POSTCONFIRMED": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(InvoiceStatusConstants data) {
    return data.value;
  }
}

