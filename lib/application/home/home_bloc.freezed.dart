// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getHomeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeDetails value) getHomeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetHomeDetails value)? getHomeDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeDetails value)? getHomeDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$$_GetHomeDetailsCopyWith<$Res> {
  factory _$$_GetHomeDetailsCopyWith(
          _$_GetHomeDetails value, $Res Function(_$_GetHomeDetails) then) =
      __$$_GetHomeDetailsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetHomeDetailsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$_GetHomeDetailsCopyWith<$Res> {
  __$$_GetHomeDetailsCopyWithImpl(
      _$_GetHomeDetails _value, $Res Function(_$_GetHomeDetails) _then)
      : super(_value, (v) => _then(v as _$_GetHomeDetails));

  @override
  _$_GetHomeDetails get _value => super._value as _$_GetHomeDetails;
}

/// @nodoc

class _$_GetHomeDetails implements _GetHomeDetails {
  const _$_GetHomeDetails();

  @override
  String toString() {
    return 'HomeEvent.getHomeDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetHomeDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeDetails,
  }) {
    return getHomeDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getHomeDetails,
  }) {
    return getHomeDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeDetails,
    required TResult orElse(),
  }) {
    if (getHomeDetails != null) {
      return getHomeDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeDetails value) getHomeDetails,
  }) {
    return getHomeDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetHomeDetails value)? getHomeDetails,
  }) {
    return getHomeDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeDetails value)? getHomeDetails,
    required TResult orElse(),
  }) {
    if (getHomeDetails != null) {
      return getHomeDetails(this);
    }
    return orElse();
  }
}

abstract class _GetHomeDetails implements HomeEvent {
  const factory _GetHomeDetails() = _$_GetHomeDetails;
}

/// @nodoc
mixin _$HomeDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  HomeModel? get home => throw _privateConstructorUsedError;
  Option<Either<MainFailure, HomeModel>> get homeFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeDetailsStateCopyWith<HomeDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDetailsStateCopyWith<$Res> {
  factory $HomeDetailsStateCopyWith(
          HomeDetailsState value, $Res Function(HomeDetailsState) then) =
      _$HomeDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      HomeModel? home,
      Option<Either<MainFailure, HomeModel>> homeFailureOrSuccessOption});

  $HomeModelCopyWith<$Res>? get home;
}

/// @nodoc
class _$HomeDetailsStateCopyWithImpl<$Res>
    implements $HomeDetailsStateCopyWith<$Res> {
  _$HomeDetailsStateCopyWithImpl(this._value, this._then);

  final HomeDetailsState _value;
  // ignore: unused_field
  final $Res Function(HomeDetailsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? home = freezed,
    Object? homeFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      home: home == freezed
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as HomeModel?,
      homeFailureOrSuccessOption: homeFailureOrSuccessOption == freezed
          ? _value.homeFailureOrSuccessOption
          : homeFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, HomeModel>>,
    ));
  }

  @override
  $HomeModelCopyWith<$Res>? get home {
    if (_value.home == null) {
      return null;
    }

    return $HomeModelCopyWith<$Res>(_value.home!, (value) {
      return _then(_value.copyWith(home: value));
    });
  }
}

/// @nodoc
abstract class _$$_HomeDetailsStateCopyWith<$Res>
    implements $HomeDetailsStateCopyWith<$Res> {
  factory _$$_HomeDetailsStateCopyWith(
          _$_HomeDetailsState value, $Res Function(_$_HomeDetailsState) then) =
      __$$_HomeDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      HomeModel? home,
      Option<Either<MainFailure, HomeModel>> homeFailureOrSuccessOption});

  @override
  $HomeModelCopyWith<$Res>? get home;
}

/// @nodoc
class __$$_HomeDetailsStateCopyWithImpl<$Res>
    extends _$HomeDetailsStateCopyWithImpl<$Res>
    implements _$$_HomeDetailsStateCopyWith<$Res> {
  __$$_HomeDetailsStateCopyWithImpl(
      _$_HomeDetailsState _value, $Res Function(_$_HomeDetailsState) _then)
      : super(_value, (v) => _then(v as _$_HomeDetailsState));

  @override
  _$_HomeDetailsState get _value => super._value as _$_HomeDetailsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? home = freezed,
    Object? homeFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_HomeDetailsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      home: home == freezed
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as HomeModel?,
      homeFailureOrSuccessOption: homeFailureOrSuccessOption == freezed
          ? _value.homeFailureOrSuccessOption
          : homeFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, HomeModel>>,
    ));
  }
}

/// @nodoc

class _$_HomeDetailsState implements _HomeDetailsState {
  const _$_HomeDetailsState(
      {required this.isLoading,
      this.home,
      required this.homeFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final HomeModel? home;
  @override
  final Option<Either<MainFailure, HomeModel>> homeFailureOrSuccessOption;

  @override
  String toString() {
    return 'HomeDetailsState(isLoading: $isLoading, home: $home, homeFailureOrSuccessOption: $homeFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeDetailsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.home, home) &&
            const DeepCollectionEquality().equals(
                other.homeFailureOrSuccessOption, homeFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(home),
      const DeepCollectionEquality().hash(homeFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_HomeDetailsStateCopyWith<_$_HomeDetailsState> get copyWith =>
      __$$_HomeDetailsStateCopyWithImpl<_$_HomeDetailsState>(this, _$identity);
}

abstract class _HomeDetailsState implements HomeDetailsState {
  const factory _HomeDetailsState(
      {required final bool isLoading,
      final HomeModel? home,
      required final Option<Either<MainFailure, HomeModel>>
          homeFailureOrSuccessOption}) = _$_HomeDetailsState;

  @override
  bool get isLoading;
  @override
  HomeModel? get home;
  @override
  Option<Either<MainFailure, HomeModel>> get homeFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_HomeDetailsStateCopyWith<_$_HomeDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
