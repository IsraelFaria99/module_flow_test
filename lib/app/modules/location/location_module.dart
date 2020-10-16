import 'package:flutter_modular/flutter_modular.dart';

import 'cubits/current_location_address/current_location_address_cubit.dart';
import 'submodules/address_type_selector/address_type_selector_page.dart';
import 'submodules/delivery_address_search/delivery_address_search_module.dart';
import 'submodules/delivery_address_selector/delivery_address_selector_page.dart';
import 'submodules/delivery_location_point_selector/delivery_location_point_selector_page.dart';
import 'submodules/insert_address_details/insert_address_details_module.dart';

class LocationModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind(
          (i) => CurrentLocationAddressCubit(i()),
          singleton: false,
        ),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (_, args) => DeliveryAddressSelectorPage(),
        ),
        ModularRouter(
          '/delivery-address-search',
          module: DeliveryAddressSearchModule(),
        ),
        ModularRouter(
          '/delivery-location-point-selector',
          child: (_, args) => DeliveryLocationPointSelectorPage(
            location: args.data,
          ),
        ),
        ModularRouter<String>(
          '/address-type-selector',
          child: (_, args) => AddressTypeSelectorPage(),
        ),
        ModularRouter(
          '/insert-address-details',
          module: InsertAddressDetailsModule(),
        ),
      ];

  static Inject get to => Inject<LocationModule>.of();
}
