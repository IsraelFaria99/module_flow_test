part of 'current_location_address_cubit.dart';

@freezed
abstract class CurrentLocationAddressState with _$CurrentLocationAddressState {
  const factory CurrentLocationAddressState.initial() =
      CurrentLocationAddressInitial;
  const factory CurrentLocationAddressState.loadInProgress() =
      CurrentLocationAddressLoadInProgress;
  const factory CurrentLocationAddressState.loadSuccess(
    LocationModel location,
  ) = CurrentLocationAddressLoadSuccess;
  const factory CurrentLocationAddressState.loadFailure() =
      CurrentLocationAddressLoadFailure;
}
