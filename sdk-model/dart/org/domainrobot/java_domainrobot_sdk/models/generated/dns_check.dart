part of swagger.api;

class DNSCheck {
  /// The underlying value of this enum member.
  String value;

  DNSCheck._internal(this.value);

  static DNSCheck sOA_ = DNSCheck._internal("SOA");
  static DNSCheck nS_ = DNSCheck._internal("NS");
  static DNSCheck aLL_ = DNSCheck._internal("ALL");
  static DNSCheck nONE_ = DNSCheck._internal("NONE");

  DNSCheck.fromJson(dynamic data) {
    switch (data) {
          case "SOA": value = data; break;
          case "NS": value = data; break;
          case "ALL": value = data; break;
          case "NONE": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(DNSCheck data) {
    return data.value;
  }
}

