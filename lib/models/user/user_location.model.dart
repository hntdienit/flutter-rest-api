class UserLocation {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationStreet street;
  final LocationCoordinates coordinates;
  final LocationTimezone timezone;

  UserLocation(
      {required this.city,
      required this.state,
      required this.country,
      required this.postcode,
      required this.street,
      required this.coordinates,
      required this.timezone});

  factory UserLocation.fromMap(Map<String, dynamic> location) {
    return UserLocation(
        city: location['city'],
        state: location['state'],
        country: location['country'],
        postcode: location['postcode'].toString(),
        street: LocationStreet.fromMap(location['street']),
        coordinates: LocationCoordinates.fromMap(location['coordinates']),
        timezone: LocationTimezone.fromMap(location['timezone']));
  }
}

class LocationStreet {
  final int number;
  final String name;

  LocationStreet({required this.number, required this.name});

  factory LocationStreet.fromMap(Map<String, dynamic> street) {
    return LocationStreet(number: street['number'], name: street['name']);
  }
}

class LocationCoordinates {
  final String latitude;
  final String longitude;

  LocationCoordinates({required this.latitude, required this.longitude});

  factory LocationCoordinates.fromMap(Map<String, dynamic> coordinates) {
    return LocationCoordinates(
        latitude: coordinates['latitude'], longitude: coordinates['longitude']);
  }
}

class LocationTimezone {
  final String offset;
  final String description;

  LocationTimezone({required this.offset, required this.description});

  factory LocationTimezone.fromMap(Map<String, dynamic> timezone) {
    return LocationTimezone(
        offset: timezone['offset'], description: timezone['description']);
  }
}
