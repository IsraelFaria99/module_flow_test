import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'insert_address_state.dart';
part 'insert_address_cubit.freezed.dart';

class InsertAddressCubit extends Cubit<InsertAddressState> {
  InsertAddressCubit() : super(InsertAddressState.initial());
}
