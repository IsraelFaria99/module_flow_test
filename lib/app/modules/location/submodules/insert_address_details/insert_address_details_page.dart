import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/dtos/location/address_details_dto.dart';
import 'cubits/address_details_form/address_details_form_cubit.dart';

class InsertAddressDetailsPage extends StatefulWidget {
  final AddressDetailsDto addressDetailsDto;

  InsertAddressDetailsPage({
    Key key,
    @required this.addressDetailsDto,
  }) : super(key: key);

  @override
  _InsertAddressDetailsPageState createState() =>
      _InsertAddressDetailsPageState();
}

class _InsertAddressDetailsPageState extends State<InsertAddressDetailsPage> {
  final _addressDetailsFormCubit = Modular.get<AddressDetailsFormCubit>();

  @override
  void initState() {
    super.initState();
    _addressDetailsFormCubit.initializeForm(widget.addressDetailsDto);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Insert Address Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildForm(),
            const SizedBox(height: 12),
            RaisedButton(
              onPressed: () async {
                final addressType = await Modular.to
                    .pushNamed<String>('/address-type-selector');
                if (addressType != null) {
                  _addressDetailsFormCubit.updateAddressType(addressType);
                }
              },
              child: Text('Change Address Type'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildForm() {
    return BlocBuilder<AddressDetailsFormCubit, AddressDetailsFormState>(
      cubit: _addressDetailsFormCubit,
      builder: (_, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            state.location.fold(
              () => SizedBox.shrink(),
              (location) => Text(location.formattedAddress),
            ),
            Text(state.addressType.getOrElse(() => '')),
          ],
        );
      },
    );
  }
}
