import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/models/location_model.dart';
import 'cubits/address_search/address_search_cubit.dart';

class DeliveryAddressSearchPage extends StatefulWidget {
  @override
  _DeliveryAddressSearchPageState createState() =>
      _DeliveryAddressSearchPageState();
}

class _DeliveryAddressSearchPageState extends State<DeliveryAddressSearchPage> {
  final _addressSearchCubit = Modular.get<AddressSearchCubit>();

  @override
  void initState() {
    super.initState();
    _addressSearchCubit.initializeLocations('some filter');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Delivery Address Search'),
      ),
      body: BlocBuilder<AddressSearchCubit, AddressSearchState>(
        cubit: _addressSearchCubit,
        builder: (_, state) {
          return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => Center(child: CircularProgressIndicator()),
            loadSuccess: (state) => _buildLocations(state.locations),
            loadFailure: (_) => Text('Error'),
          );
        },
      ),
    );
  }

  Widget _buildLocations(List<LocationModel> locations) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: ListView.separated(
        itemCount: locations.length,
        separatorBuilder: (_, index) {
          return Divider();
        },
        itemBuilder: (_, index) {
          final location = locations[index];
          return ListTile(
            onTap: () {
              Modular.to.pushNamed(
                'delivery-location-point-selector',
                arguments: location,
              );
            },
            title: Text('Address ${index + 1}'),
            subtitle: Text(location.formattedAddress),
          );
        },
      ),
    );
  }
}
