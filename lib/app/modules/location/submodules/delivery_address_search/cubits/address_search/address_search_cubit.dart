import 'package:bloc/bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../shared/models/location_model.dart';
import '../../../../../../shared/services/location_service.dart';

part 'address_search_cubit.freezed.dart';
part 'address_search_state.dart';

class AddressSearchCubit extends Cubit<AddressSearchState>
    implements Disposable {
  final LocationService _locationService;

  AddressSearchCubit(this._locationService)
      : super(AddressSearchState.initial());

  void initializeLocations(String filter) async {
    emit(AddressSearchState.loadInProgress());
    final failureOrSuccess =
        await _locationService.fetchLocationsByFilter(filter);

    failureOrSuccess.fold(
      (_) => emit(AddressSearchState.loadFailure()),
      (locations) => emit(AddressSearchState.loadSuccess(locations)),
    );
  }

  @override
  void dispose() => close();
}
