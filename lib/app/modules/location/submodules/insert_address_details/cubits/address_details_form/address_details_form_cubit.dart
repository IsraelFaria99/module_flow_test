import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../shared/dtos/location/address_details_dto.dart';
import '../../../../../../shared/models/location_model.dart';

part 'address_details_form_cubit.freezed.dart';
part 'address_details_form_state.dart';

class AddressDetailsFormCubit extends Cubit<AddressDetailsFormState> {
  AddressDetailsFormCubit() : super(AddressDetailsFormState.initial());

  void initializeForm(AddressDetailsDto addressDetailsDto) {
    emit(
      state.copyWith(
        location: optionOf(addressDetailsDto.location),
        addressType: optionOf(addressDetailsDto.addressType),
      ),
    );
  }

  void updateAddressType(String addressType) {
    emit(state.copyWith(addressType: optionOf(addressType)));
  }
}
