import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/dtos/location/address_details_dto.dart';
import '../../../../shared/models/location_model.dart';
import '../../../../shared/strategies/location/address_details_form_redirection/saved_addresses_redirection.dart';
import '../../cubits/current_location_address/current_location_address_cubit.dart';

class DeliveryLocationPointSelectorPage extends StatelessWidget {
  final LocationModel location;

  const DeliveryLocationPointSelectorPage({
    Key key,
    @required this.location,
  }) : super(key: key);

  void _redirectToInsertAddress(LocationModel newLocation) async {
    final addressType =
        await Modular.to.pushNamed<String>('/address-type-selector');

    if (addressType != null) {
      Modular.to.pushNamed(
        '/insert-address-details',
        arguments: AddressDetailsDto(
          addressType: addressType,
          location: newLocation,
          redirectionStrategy: SavedAddressesRedirection(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return Modular.get<CurrentLocationAddressCubit>()..initialize(location);
      },
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text('Delivery Location Point Selector'),
          ),
          body: SafeArea(
            child: Center(
              child: _buildSelectedLocation(context),
            ),
          ),
        );
      }),
    );
  }

  Widget _buildSelectedLocation(BuildContext context) {
    return BlocBuilder<CurrentLocationAddressCubit,
        CurrentLocationAddressState>(
      builder: (_, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => CircularProgressIndicator(),
          loadSuccess: (state) {
            final currentLocation = state.location;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Localização Selecionada'),
                Text(currentLocation.formattedAddress),
                const SizedBox(height: 12),
                Text(
                  '${currentLocation.latitude}, ${currentLocation.longitude}',
                ),
                const SizedBox(height: 12),
                RaisedButton(
                  onPressed: () {
                    context
                        .bloc<CurrentLocationAddressCubit>()
                        .updateByCoordinates(
                          latitude: -5.34321312,
                          longitude: -45.98789646,
                        );
                  },
                  child: Text('Atribuir onde quero receber'),
                ),
                RaisedButton(
                  onPressed: () => _redirectToInsertAddress(currentLocation),
                  child: Text('Continuar'),
                ),
              ],
            );
          },
          loadFailure: (_) => Text('Error'),
        );
      },
    );
  }
}
