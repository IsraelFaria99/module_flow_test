part of 'address_details_form_cubit.dart';

@freezed
abstract class AddressDetailsFormState with _$AddressDetailsFormState {
  const factory AddressDetailsFormState({
    @required Option<LocationModel> location,
    @required Option<String> addressType,
  }) = _AddressDetailsFormState;

  factory AddressDetailsFormState.initial() => AddressDetailsFormState(
        location: none(),
        addressType: none(),
      );
}
