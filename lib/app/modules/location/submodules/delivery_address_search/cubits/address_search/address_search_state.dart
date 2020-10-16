part of 'address_search_cubit.dart';

@freezed
abstract class AddressSearchState with _$AddressSearchState {
  const factory AddressSearchState.initial() = AddressSearchInitial;
  const factory AddressSearchState.loadInProgress() =
      AddressSearchLoadInProgress;
  const factory AddressSearchState.loadSuccess(List<LocationModel> locations) =
      AddressSearchLoadSuccess;
  const factory AddressSearchState.loadFailure() = AddressSearchLoadFailure;
}
