// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'address_details_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddressDetailsFormStateTearOff {
  const _$AddressDetailsFormStateTearOff();

// ignore: unused_element
  _AddressDetailsFormState call(
      {@required Option<LocationModel> location,
      @required Option<String> addressType}) {
    return _AddressDetailsFormState(
      location: location,
      addressType: addressType,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddressDetailsFormState = _$AddressDetailsFormStateTearOff();

/// @nodoc
mixin _$AddressDetailsFormState {
  Option<LocationModel> get location;
  Option<String> get addressType;

  $AddressDetailsFormStateCopyWith<AddressDetailsFormState> get copyWith;
}

/// @nodoc
abstract class $AddressDetailsFormStateCopyWith<$Res> {
  factory $AddressDetailsFormStateCopyWith(AddressDetailsFormState value,
          $Res Function(AddressDetailsFormState) then) =
      _$AddressDetailsFormStateCopyWithImpl<$Res>;
  $Res call({Option<LocationModel> location, Option<String> addressType});
}

/// @nodoc
class _$AddressDetailsFormStateCopyWithImpl<$Res>
    implements $AddressDetailsFormStateCopyWith<$Res> {
  _$AddressDetailsFormStateCopyWithImpl(this._value, this._then);

  final AddressDetailsFormState _value;
  // ignore: unused_field
  final $Res Function(AddressDetailsFormState) _then;

  @override
  $Res call({
    Object location = freezed,
    Object addressType = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location as Option<LocationModel>,
      addressType: addressType == freezed
          ? _value.addressType
          : addressType as Option<String>,
    ));
  }
}

/// @nodoc
abstract class _$AddressDetailsFormStateCopyWith<$Res>
    implements $AddressDetailsFormStateCopyWith<$Res> {
  factory _$AddressDetailsFormStateCopyWith(_AddressDetailsFormState value,
          $Res Function(_AddressDetailsFormState) then) =
      __$AddressDetailsFormStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<LocationModel> location, Option<String> addressType});
}

/// @nodoc
class __$AddressDetailsFormStateCopyWithImpl<$Res>
    extends _$AddressDetailsFormStateCopyWithImpl<$Res>
    implements _$AddressDetailsFormStateCopyWith<$Res> {
  __$AddressDetailsFormStateCopyWithImpl(_AddressDetailsFormState _value,
      $Res Function(_AddressDetailsFormState) _then)
      : super(_value, (v) => _then(v as _AddressDetailsFormState));

  @override
  _AddressDetailsFormState get _value =>
      super._value as _AddressDetailsFormState;

  @override
  $Res call({
    Object location = freezed,
    Object addressType = freezed,
  }) {
    return _then(_AddressDetailsFormState(
      location: location == freezed
          ? _value.location
          : location as Option<LocationModel>,
      addressType: addressType == freezed
          ? _value.addressType
          : addressType as Option<String>,
    ));
  }
}

/// @nodoc
class _$_AddressDetailsFormState implements _AddressDetailsFormState {
  const _$_AddressDetailsFormState(
      {@required this.location, @required this.addressType})
      : assert(location != null),
        assert(addressType != null);

  @override
  final Option<LocationModel> location;
  @override
  final Option<String> addressType;

  @override
  String toString() {
    return 'AddressDetailsFormState(location: $location, addressType: $addressType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddressDetailsFormState &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.addressType, addressType) ||
                const DeepCollectionEquality()
                    .equals(other.addressType, addressType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(addressType);

  @override
  _$AddressDetailsFormStateCopyWith<_AddressDetailsFormState> get copyWith =>
      __$AddressDetailsFormStateCopyWithImpl<_AddressDetailsFormState>(
          this, _$identity);
}

abstract class _AddressDetailsFormState implements AddressDetailsFormState {
  const factory _AddressDetailsFormState(
      {@required Option<LocationModel> location,
      @required Option<String> addressType}) = _$_AddressDetailsFormState;

  @override
  Option<LocationModel> get location;
  @override
  Option<String> get addressType;
  @override
  _$AddressDetailsFormStateCopyWith<_AddressDetailsFormState> get copyWith;
}
