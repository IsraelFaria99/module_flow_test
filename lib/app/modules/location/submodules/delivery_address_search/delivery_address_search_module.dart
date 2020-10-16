import 'package:flutter_modular/flutter_modular.dart';

import 'cubits/address_search/address_search_cubit.dart';
import 'delivery_address_search_page.dart';

class DeliveryAddressSearchModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AddressSearchCubit(i())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (_, args) => DeliveryAddressSearchPage(),
        ),
      ];

  static Inject get to => Inject<DeliveryAddressSearchModule>.of();
}
