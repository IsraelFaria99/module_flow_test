import 'package:dartz/dartz.dart';

import '../models/location_model.dart';

class LocationService {
  Future<Either<Unit, LocationModel>> fetchCurrentLocation() {
    final location = LocationModel(
      latitude: -5.312314,
      longitude: -45.020121,
      formattedAddress: 'Street Example, 101, 604512-032',
    );

    return Future.delayed(Duration(seconds: 2), () => right(location));
  }

  Future<Either<Unit, List<LocationModel>>> fetchLocationsByFilter(
    String filter,
  ) {
    final locations = [
      LocationModel(
        latitude: -5.321321312,
        longitude: -45.2323111,
        formattedAddress: 'Street Example 1, 101, 604512-032',
      ),
      LocationModel(
        latitude: -5.12312312,
        longitude: -45.6565321,
        formattedAddress: 'Street Example 2, 201, 654512-032',
      ),
      LocationModel(
        latitude: -5.345345354,
        longitude: -45.98789646,
        formattedAddress: 'Street Example 3, 301, 704512-032',
      ),
    ];
    return Future.delayed(Duration(seconds: 2), () => right(locations));
  }
}
