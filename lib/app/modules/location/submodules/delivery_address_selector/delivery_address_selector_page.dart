import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/models/location_model.dart';
import '../../cubits/current_location_address/current_location_address_cubit.dart';

class DeliveryAddressSelectorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => Modular.get<CurrentLocationAddressCubit>(),
      child: _DeliveryAddressSelectorPage(),
    );
  }
}

class _DeliveryAddressSelectorPage extends StatefulWidget {
  @override
  __DeliveryAddressSelectorPageState createState() =>
      __DeliveryAddressSelectorPageState();
}

class __DeliveryAddressSelectorPageState
    extends State<_DeliveryAddressSelectorPage> {
  @override
  void initState() {
    super.initState();
    context.bloc<CurrentLocationAddressCubit>().fetchCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Delivery Address Selector'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CurrentLocationAddressCubit,
                  CurrentLocationAddressState>(
                builder: (_, state) {
                  return state.map(
                    initial: (_) => Container(),
                    loadInProgress: (_) => CircularProgressIndicator(),
                    loadSuccess: (state) =>
                        _buildSuccessContent(state.location),
                    loadFailure: (_) => Text('Error'),
                  );
                },
              ),
              const SizedBox(height: 18),
              RaisedButton(
                onPressed: () {
                  Modular.to.pushNamed(
                    '/delivery-address-search',
                  );
                },
                child: Text('Search Address'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSuccessContent(LocationModel location) {
    return InkWell(
      onTap: () {
        Modular.to.pushNamed(
          '/delivery-location-point-selector',
          arguments: location,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Na minha localização atual'),
            Text(location.formattedAddress),
          ],
        ),
      ),
    );
  }
}
