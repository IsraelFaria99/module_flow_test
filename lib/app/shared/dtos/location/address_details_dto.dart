import 'package:meta/meta.dart';

import '../../models/location_model.dart';
import '../../strategies/location/address_details_form_redirection/i_address_details_form_redirection.dart';

class AddressDetailsDto {
  final LocationModel location;
  final String addressType;
  final IAddressDetailsFormRedirection redirectionStrategy;

  AddressDetailsDto({
    @required this.location,
    @required this.addressType,
    @required this.redirectionStrategy,
  })  : assert(location != null),
        assert(addressType != null),
        assert(redirectionStrategy != null);
}
