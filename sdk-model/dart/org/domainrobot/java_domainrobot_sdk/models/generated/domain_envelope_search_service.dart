part of swagger.api;

class DomainEnvelopeSearchService {
  /// The underlying value of this enum member.
  String value;

  DomainEnvelopeSearchService._internal(this.value);

  static DomainEnvelopeSearchService wHOIS_ = DomainEnvelopeSearchService._internal("WHOIS");
  static DomainEnvelopeSearchService pRICE_ = DomainEnvelopeSearchService._internal("PRICE");
  static DomainEnvelopeSearchService eSTIMATION_ = DomainEnvelopeSearchService._internal("ESTIMATION");

  DomainEnvelopeSearchService.fromJson(dynamic data) {
    switch (data) {
          case "WHOIS": value = data; break;
          case "PRICE": value = data; break;
          case "ESTIMATION": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(DomainEnvelopeSearchService data) {
    return data.value;
  }
}

