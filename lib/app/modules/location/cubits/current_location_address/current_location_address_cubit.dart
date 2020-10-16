import 'package:bloc/bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/models/location_model.dart';
import '../../../../shared/services/location_service.dart';

part 'current_location_address_cubit.freezed.dart';
part 'current_location_address_state.dart';

class CurrentLocationAddressCubit extends Cubit<CurrentLocationAddressState>
    implements Disposable {
  final LocationService _locationService;

  CurrentLocationAddressCubit(this._locationService)
      : super(CurrentLocationAddressState.initial());

  void initialize(LocationModel newLocation) {
    print("Veio aqui");
    emit(CurrentLocationAddressState.loadSuccess(newLocation));
  }

  void fetchCurrentLocation() async {
    emit(CurrentLocationAddressState.loadInProgress());
    final failureOrSuccess = await _locationService.fetchCurrentLocation();
    failureOrSuccess.fold(
      (_) => emit(CurrentLocationAddressState.loadFailure()),
      (location) => emit(CurrentLocationAddressState.loadSuccess(location)),
    );
  }

  void updateByCoordinates({
    @required double latitude,
    @required double longitude,
  }) async {
    fetchCurrentLocation();
  }

  @override
  void dispose() => close();
}
