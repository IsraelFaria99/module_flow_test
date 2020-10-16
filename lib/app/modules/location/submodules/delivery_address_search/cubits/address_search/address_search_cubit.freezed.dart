// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'address_search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddressSearchStateTearOff {
  const _$AddressSearchStateTearOff();

// ignore: unused_element
  AddressSearchInitial initial() {
    return const AddressSearchInitial();
  }

// ignore: unused_element
  AddressSearchLoadInProgress loadInProgress() {
    return const AddressSearchLoadInProgress();
  }

// ignore: unused_element
  AddressSearchLoadSuccess loadSuccess(List<LocationModel> locations) {
    return AddressSearchLoadSuccess(
      locations,
    );
  }

// ignore: unused_element
  AddressSearchLoadFailure loadFailure() {
    return const AddressSearchLoadFailure();
  }
}

/// @nodoc
// ignore: unused_element
const $AddressSearchState = _$AddressSearchStateTearOff();

/// @nodoc
mixin _$AddressSearchState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<LocationModel> locations),
    @required Result loadFailure(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<LocationModel> locations),
    Result loadFailure(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(AddressSearchInitial value),
    @required Result loadInProgress(AddressSearchLoadInProgress value),
    @required Result loadSuccess(AddressSearchLoadSuccess value),
    @required Result loadFailure(AddressSearchLoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(AddressSearchInitial value),
    Result loadInProgress(AddressSearchLoadInProgress value),
    Result loadSuccess(AddressSearchLoadSuccess value),
    Result loadFailure(AddressSearchLoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AddressSearchStateCopyWith<$Res> {
  factory $AddressSearchStateCopyWith(
          AddressSearchState value, $Res Function(AddressSearchState) then) =
      _$AddressSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddressSearchStateCopyWithImpl<$Res>
    implements $AddressSearchStateCopyWith<$Res> {
  _$AddressSearchStateCopyWithImpl(this._value, this._then);

  final AddressSearchState _value;
  // ignore: unused_field
  final $Res Function(AddressSearchState) _then;
}

/// @nodoc
abstract class $AddressSearchInitialCopyWith<$Res> {
  factory $AddressSearchInitialCopyWith(AddressSearchInitial value,
          $Res Function(AddressSearchInitial) then) =
      _$AddressSearchInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddressSearchInitialCopyWithImpl<$Res>
    extends _$AddressSearchStateCopyWithImpl<$Res>
    implements $AddressSearchInitialCopyWith<$Res> {
  _$AddressSearchInitialCopyWithImpl(
      AddressSearchInitial _value, $Res Function(AddressSearchInitial) _then)
      : super(_value, (v) => _then(v as AddressSearchInitial));

  @override
  AddressSearchInitial get _value => super._value as AddressSearchInitial;
}

/// @nodoc
class _$AddressSearchInitial implements AddressSearchInitial {
  const _$AddressSearchInitial();

  @override
  String toString() {
    return 'AddressSearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddressSearchInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<LocationModel> locations),
    @required Result loadFailure(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<LocationModel> locations),
    Result loadFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(AddressSearchInitial value),
    @required Result loadInProgress(AddressSearchLoadInProgress value),
    @required Result loadSuccess(AddressSearchLoadSuccess value),
    @required Result loadFailure(AddressSearchLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(AddressSearchInitial value),
    Result loadInProgress(AddressSearchLoadInProgress value),
    Result loadSuccess(AddressSearchLoadSuccess value),
    Result loadFailure(AddressSearchLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AddressSearchInitial implements AddressSearchState {
  const factory AddressSearchInitial() = _$AddressSearchInitial;
}

/// @nodoc
abstract class $AddressSearchLoadInProgressCopyWith<$Res> {
  factory $AddressSearchLoadInProgressCopyWith(
          AddressSearchLoadInProgress value,
          $Res Function(AddressSearchLoadInProgress) then) =
      _$AddressSearchLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddressSearchLoadInProgressCopyWithImpl<$Res>
    extends _$AddressSearchStateCopyWithImpl<$Res>
    implements $AddressSearchLoadInProgressCopyWith<$Res> {
  _$AddressSearchLoadInProgressCopyWithImpl(AddressSearchLoadInProgress _value,
      $Res Function(AddressSearchLoadInProgress) _then)
      : super(_value, (v) => _then(v as AddressSearchLoadInProgress));

  @override
  AddressSearchLoadInProgress get _value =>
      super._value as AddressSearchLoadInProgress;
}

/// @nodoc
class _$AddressSearchLoadInProgress implements AddressSearchLoadInProgress {
  const _$AddressSearchLoadInProgress();

  @override
  String toString() {
    return 'AddressSearchState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddressSearchLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<LocationModel> locations),
    @required Result loadFailure(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<LocationModel> locations),
    Result loadFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(AddressSearchInitial value),
    @required Result loadInProgress(AddressSearchLoadInProgress value),
    @required Result loadSuccess(AddressSearchLoadSuccess value),
    @required Result loadFailure(AddressSearchLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(AddressSearchInitial value),
    Result loadInProgress(AddressSearchLoadInProgress value),
    Result loadSuccess(AddressSearchLoadSuccess value),
    Result loadFailure(AddressSearchLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class AddressSearchLoadInProgress implements AddressSearchState {
  const factory AddressSearchLoadInProgress() = _$AddressSearchLoadInProgress;
}

/// @nodoc
abstract class $AddressSearchLoadSuccessCopyWith<$Res> {
  factory $AddressSearchLoadSuccessCopyWith(AddressSearchLoadSuccess value,
          $Res Function(AddressSearchLoadSuccess) then) =
      _$AddressSearchLoadSuccessCopyWithImpl<$Res>;
  $Res call({List<LocationModel> locations});
}

/// @nodoc
class _$AddressSearchLoadSuccessCopyWithImpl<$Res>
    extends _$AddressSearchStateCopyWithImpl<$Res>
    implements $AddressSearchLoadSuccessCopyWith<$Res> {
  _$AddressSearchLoadSuccessCopyWithImpl(AddressSearchLoadSuccess _value,
      $Res Function(AddressSearchLoadSuccess) _then)
      : super(_value, (v) => _then(v as AddressSearchLoadSuccess));

  @override
  AddressSearchLoadSuccess get _value =>
      super._value as AddressSearchLoadSuccess;

  @override
  $Res call({
    Object locations = freezed,
  }) {
    return _then(AddressSearchLoadSuccess(
      locations == freezed
          ? _value.locations
          : locations as List<LocationModel>,
    ));
  }
}

/// @nodoc
class _$AddressSearchLoadSuccess implements AddressSearchLoadSuccess {
  const _$AddressSearchLoadSuccess(this.locations) : assert(locations != null);

  @override
  final List<LocationModel> locations;

  @override
  String toString() {
    return 'AddressSearchState.loadSuccess(locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddressSearchLoadSuccess &&
            (identical(other.locations, locations) ||
                const DeepCollectionEquality()
                    .equals(other.locations, locations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locations);

  @override
  $AddressSearchLoadSuccessCopyWith<AddressSearchLoadSuccess> get copyWith =>
      _$AddressSearchLoadSuccessCopyWithImpl<AddressSearchLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<LocationModel> locations),
    @required Result loadFailure(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(locations);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<LocationModel> locations),
    Result loadFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(locations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(AddressSearchInitial value),
    @required Result loadInProgress(AddressSearchLoadInProgress value),
    @required Result loadSuccess(AddressSearchLoadSuccess value),
    @required Result loadFailure(AddressSearchLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(AddressSearchInitial value),
    Result loadInProgress(AddressSearchLoadInProgress value),
    Result loadSuccess(AddressSearchLoadSuccess value),
    Result loadFailure(AddressSearchLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class AddressSearchLoadSuccess implements AddressSearchState {
  const factory AddressSearchLoadSuccess(List<LocationModel> locations) =
      _$AddressSearchLoadSuccess;

  List<LocationModel> get locations;
  $AddressSearchLoadSuccessCopyWith<AddressSearchLoadSuccess> get copyWith;
}

/// @nodoc
abstract class $AddressSearchLoadFailureCopyWith<$Res> {
  factory $AddressSearchLoadFailureCopyWith(AddressSearchLoadFailure value,
          $Res Function(AddressSearchLoadFailure) then) =
      _$AddressSearchLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddressSearchLoadFailureCopyWithImpl<$Res>
    extends _$AddressSearchStateCopyWithImpl<$Res>
    implements $AddressSearchLoadFailureCopyWith<$Res> {
  _$AddressSearchLoadFailureCopyWithImpl(AddressSearchLoadFailure _value,
      $Res Function(AddressSearchLoadFailure) _then)
      : super(_value, (v) => _then(v as AddressSearchLoadFailure));

  @override
  AddressSearchLoadFailure get _value =>
      super._value as AddressSearchLoadFailure;
}

/// @nodoc
class _$AddressSearchLoadFailure implements AddressSearchLoadFailure {
  const _$AddressSearchLoadFailure();

  @override
  String toString() {
    return 'AddressSearchState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddressSearchLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<LocationModel> locations),
    @required Result loadFailure(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<LocationModel> locations),
    Result loadFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(AddressSearchInitial value),
    @required Result loadInProgress(AddressSearchLoadInProgress value),
    @required Result loadSuccess(AddressSearchLoadSuccess value),
    @required Result loadFailure(AddressSearchLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(AddressSearchInitial value),
    Result loadInProgress(AddressSearchLoadInProgress value),
    Result loadSuccess(AddressSearchLoadSuccess value),
    Result loadFailure(AddressSearchLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class AddressSearchLoadFailure implements AddressSearchState {
  const factory AddressSearchLoadFailure() = _$AddressSearchLoadFailure;
}
