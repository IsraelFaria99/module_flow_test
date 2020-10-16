import 'package:flutter_modular/flutter_modular.dart';

import 'cubits/address_details_form/address_details_form_cubit.dart';
import 'cubits/insert_address/insert_address_cubit.dart';
import 'insert_address_details_page.dart';

class InsertAddressDetailsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AddressDetailsFormCubit()),
        Bind((i) => InsertAddressCubit()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (_, args) => InsertAddressDetailsPage(
            addressDetailsDto: args.data,
          ),
        ),
      ];

  static Inject get to => Inject<InsertAddressDetailsModule>.of();
}
