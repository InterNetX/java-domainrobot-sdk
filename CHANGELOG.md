# Changelog

## [0.2.8] - 2021-04-06

* Changed HTTP method of the zone list call (#23)
* Changed return value of DomainClient.createAuthinfo1 (#25)
* Changed return value of ContactClient.update (#26)

## [0.2.7] - 2020-08-27

* Fixed NPE in PollClient.info() if there is no poll message available(#17)
* Improved PollClient.info() method to accept a long value instead of integer (#19)
* Fixed JSON Mapping for all operations on domains that create an asynchronous job (#21)

## [0.2.6] - 2020-08-21

* Fixed NPE in ZoneClient (#15)

## [0.2.5] - 2020-08-07

* Improved JSON Mapping for all operations that create an asynchronous job (#14)

## [0.2.4] - 2020-07-30

* Improved exception handling (#13)
* Improved all list task to accept queryParameters (#10)
* Improved json serialising to ignore null values (#12)
* Updated pom version in sub modules to match main version (#11)

## [0.2.3] - 2020-07-17

* Fixed the ContactList method using the wrong http method (#9)

## [0.2.2] - 2020-06-05

* Improved code documentation
* Fixed serialization type in the DomainCancelationUpdate methode (#8)

## [0.1.0] - 2020-02-12

* Initial release
