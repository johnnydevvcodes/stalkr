// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoadState,
    required TResult Function(User? user) onAuthState,
    required TResult Function() onLogoutState,
    required TResult Function() onErrorState,
    required TResult Function() onLoggedInState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoadState,
    TResult Function(User? user)? onAuthState,
    TResult Function()? onLogoutState,
    TResult Function()? onErrorState,
    TResult Function()? onLoggedInState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoadState,
    TResult Function(User? user)? onAuthState,
    TResult Function()? onLogoutState,
    TResult Function()? onErrorState,
    TResult Function()? onLoggedInState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoading value) onLoadState,
    required TResult Function(onAuthentication value) onAuthState,
    required TResult Function(onLogout value) onLogoutState,
    required TResult Function(onError value) onErrorState,
    required TResult Function(onLoggedIn value) onLoggedInState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoading value)? onLoadState,
    TResult Function(onAuthentication value)? onAuthState,
    TResult Function(onLogout value)? onLogoutState,
    TResult Function(onError value)? onErrorState,
    TResult Function(onLoggedIn value)? onLoggedInState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoading value)? onLoadState,
    TResult Function(onAuthentication value)? onAuthState,
    TResult Function(onLogout value)? onLogoutState,
    TResult Function(onError value)? onErrorState,
    TResult Function(onLoggedIn value)? onLoggedInState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res> implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  final MainState _value;
  // ignore: unused_field
  final $Res Function(MainState) _then;
}

/// @nodoc
abstract class _$$OnLoadingCopyWith<$Res> {
  factory _$$OnLoadingCopyWith(
          _$OnLoading value, $Res Function(_$OnLoading) then) =
      __$$OnLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLoadingCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res>
    implements _$$OnLoadingCopyWith<$Res> {
  __$$OnLoadingCopyWithImpl(
      _$OnLoading _value, $Res Function(_$OnLoading) _then)
      : super(_value, (v) => _then(v as _$OnLoading));

  @override
  _$OnLoading get _value => super._value as _$OnLoading;
}

/// @nodoc

class _$OnLoading with DiagnosticableTreeMixin implements OnLoading {
  const _$OnLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState.onLoadState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainState.onLoadState'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoadState,
    required TResult Function(User? user) onAuthState,
    required TResult Function() onLogoutState,
    required TResult Function() onErrorState,
    required TResult Function() onLoggedInState,
  }) {
    return onLoadState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoadState,
    TResult Function(User? user)? onAuthState,
    TResult Function()? onLogoutState,
    TResult Function()? onErrorState,
    TResult Function()? onLoggedInState,
  }) {
    return onLoadState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoadState,
    TResult Function(User? user)? onAuthState,
    TResult Function()? onLogoutState,
    TResult Function()? onErrorState,
    TResult Function()? onLoggedInState,
    required TResult orElse(),
  }) {
    if (onLoadState != null) {
      return onLoadState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoading value) onLoadState,
    required TResult Function(onAuthentication value) onAuthState,
    required TResult Function(onLogout value) onLogoutState,
    required TResult Function(onError value) onErrorState,
    required TResult Function(onLoggedIn value) onLoggedInState,
  }) {
    return onLoadState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoading value)? onLoadState,
    TResult Function(onAuthentication value)? onAuthState,
    TResult Function(onLogout value)? onLogoutState,
    TResult Function(onError value)? onErrorState,
    TResult Function(onLoggedIn value)? onLoggedInState,
  }) {
    return onLoadState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoading value)? onLoadState,
    TResult Function(onAuthentication value)? onAuthState,
    TResult Function(onLogout value)? onLogoutState,
    TResult Function(onError value)? onErrorState,
    TResult Function(onLoggedIn value)? onLoggedInState,
    required TResult orElse(),
  }) {
    if (onLoadState != null) {
      return onLoadState(this);
    }
    return orElse();
  }
}

abstract class OnLoading implements MainState {
  const factory OnLoading() = _$OnLoading;
}

/// @nodoc
abstract class _$$onAuthenticationCopyWith<$Res> {
  factory _$$onAuthenticationCopyWith(
          _$onAuthentication value, $Res Function(_$onAuthentication) then) =
      __$$onAuthenticationCopyWithImpl<$Res>;
  $Res call({User? user});
}

/// @nodoc
class __$$onAuthenticationCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res>
    implements _$$onAuthenticationCopyWith<$Res> {
  __$$onAuthenticationCopyWithImpl(
      _$onAuthentication _value, $Res Function(_$onAuthentication) _then)
      : super(_value, (v) => _then(v as _$onAuthentication));

  @override
  _$onAuthentication get _value => super._value as _$onAuthentication;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$onAuthentication(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$onAuthentication
    with DiagnosticableTreeMixin
    implements onAuthentication {
  const _$onAuthentication(this.user);

  @override
  final User? user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState.onAuthState(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainState.onAuthState'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onAuthentication &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$onAuthenticationCopyWith<_$onAuthentication> get copyWith =>
      __$$onAuthenticationCopyWithImpl<_$onAuthentication>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoadState,
    required TResult Function(User? user) onAuthState,
    required TResult Function() onLogoutState,
    required TResult Function() onErrorState,
    required TResult Function() onLoggedInState,
  }) {
    return onAuthState(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoadState,
    TResult Function(User? user)? onAuthState,
    TResult Function()? onLogoutState,
    TResult Function()? onErrorState,
    TResult Function()? onLoggedInState,
  }) {
    return onAuthState?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoadState,
    TResult Function(User? user)? onAuthState,
    TResult Function()? onLogoutState,
    TResult Function()? onErrorState,
    TResult Function()? onLoggedInState,
    required TResult orElse(),
  }) {
    if (onAuthState != null) {
      return onAuthState(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoading value) onLoadState,
    required TResult Function(onAuthentication value) onAuthState,
    required TResult Function(onLogout value) onLogoutState,
    required TResult Function(onError value) onErrorState,
    required TResult Function(onLoggedIn value) onLoggedInState,
  }) {
    return onAuthState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoading value)? onLoadState,
    TResult Function(onAuthentication value)? onAuthState,
    TResult Function(onLogout value)? onLogoutState,
    TResult Function(onError value)? onErrorState,
    TResult Function(onLoggedIn value)? onLoggedInState,
  }) {
    return onAuthState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoading value)? onLoadState,
    TResult Function(onAuthentication value)? onAuthState,
    TResult Function(onLogout value)? onLogoutState,
    TResult Function(onError value)? onErrorState,
    TResult Function(onLoggedIn value)? onLoggedInState,
    required TResult orElse(),
  }) {
    if (onAuthState != null) {
      return onAuthState(this);
    }
    return orElse();
  }
}

abstract class onAuthentication implements MainState {
  const factory onAuthentication(final User? user) = _$onAuthentication;

  User? get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$onAuthenticationCopyWith<_$onAuthentication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onLogoutCopyWith<$Res> {
  factory _$$onLogoutCopyWith(
          _$onLogout value, $Res Function(_$onLogout) then) =
      __$$onLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onLogoutCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res>
    implements _$$onLogoutCopyWith<$Res> {
  __$$onLogoutCopyWithImpl(_$onLogout _value, $Res Function(_$onLogout) _then)
      : super(_value, (v) => _then(v as _$onLogout));

  @override
  _$onLogout get _value => super._value as _$onLogout;
}

/// @nodoc

class _$onLogout with DiagnosticableTreeMixin implements onLogout {
  const _$onLogout();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState.onLogoutState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainState.onLogoutState'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoadState,
    required TResult Function(User? user) onAuthState,
    required TResult Function() onLogoutState,
    required TResult Function() onErrorState,
    required TResult Function() onLoggedInState,
  }) {
    return onLogoutState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoadState,
    TResult Function(User? user)? onAuthState,
    TResult Function()? onLogoutState,
    TResult Function()? onErrorState,
    TResult Function()? onLoggedInState,
  }) {
    return onLogoutState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoadState,
    TResult Function(User? user)? onAuthState,
    TResult Function()? onLogoutState,
    TResult Function()? onErrorState,
    TResult Function()? onLoggedInState,
    required TResult orElse(),
  }) {
    if (onLogoutState != null) {
      return onLogoutState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoading value) onLoadState,
    required TResult Function(onAuthentication value) onAuthState,
    required TResult Function(onLogout value) onLogoutState,
    required TResult Function(onError value) onErrorState,
    required TResult Function(onLoggedIn value) onLoggedInState,
  }) {
    return onLogoutState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoading value)? onLoadState,
    TResult Function(onAuthentication value)? onAuthState,
    TResult Function(onLogout value)? onLogoutState,
    TResult Function(onError value)? onErrorState,
    TResult Function(onLoggedIn value)? onLoggedInState,
  }) {
    return onLogoutState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoading value)? onLoadState,
    TResult Function(onAuthentication value)? onAuthState,
    TResult Function(onLogout value)? onLogoutState,
    TResult Function(onError value)? onErrorState,
    TResult Function(onLoggedIn value)? onLoggedInState,
    required TResult orElse(),
  }) {
    if (onLogoutState != null) {
      return onLogoutState(this);
    }
    return orElse();
  }
}

abstract class onLogout implements MainState {
  const factory onLogout() = _$onLogout;
}

/// @nodoc
abstract class _$$onErrorCopyWith<$Res> {
  factory _$$onErrorCopyWith(_$onError value, $Res Function(_$onError) then) =
      __$$onErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onErrorCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res>
    implements _$$onErrorCopyWith<$Res> {
  __$$onErrorCopyWithImpl(_$onError _value, $Res Function(_$onError) _then)
      : super(_value, (v) => _then(v as _$onError));

  @override
  _$onError get _value => super._value as _$onError;
}

/// @nodoc

class _$onError with DiagnosticableTreeMixin implements onError {
  const _$onError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState.onErrorState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainState.onErrorState'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoadState,
    required TResult Function(User? user) onAuthState,
    required TResult Function() onLogoutState,
    required TResult Function() onErrorState,
    required TResult Function() onLoggedInState,
  }) {
    return onErrorState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoadState,
    TResult Function(User? user)? onAuthState,
    TResult Function()? onLogoutState,
    TResult Function()? onErrorState,
    TResult Function()? onLoggedInState,
  }) {
    return onErrorState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoadState,
    TResult Function(User? user)? onAuthState,
    TResult Function()? onLogoutState,
    TResult Function()? onErrorState,
    TResult Function()? onLoggedInState,
    required TResult orElse(),
  }) {
    if (onErrorState != null) {
      return onErrorState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoading value) onLoadState,
    required TResult Function(onAuthentication value) onAuthState,
    required TResult Function(onLogout value) onLogoutState,
    required TResult Function(onError value) onErrorState,
    required TResult Function(onLoggedIn value) onLoggedInState,
  }) {
    return onErrorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoading value)? onLoadState,
    TResult Function(onAuthentication value)? onAuthState,
    TResult Function(onLogout value)? onLogoutState,
    TResult Function(onError value)? onErrorState,
    TResult Function(onLoggedIn value)? onLoggedInState,
  }) {
    return onErrorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoading value)? onLoadState,
    TResult Function(onAuthentication value)? onAuthState,
    TResult Function(onLogout value)? onLogoutState,
    TResult Function(onError value)? onErrorState,
    TResult Function(onLoggedIn value)? onLoggedInState,
    required TResult orElse(),
  }) {
    if (onErrorState != null) {
      return onErrorState(this);
    }
    return orElse();
  }
}

abstract class onError implements MainState {
  const factory onError() = _$onError;
}

/// @nodoc
abstract class _$$onLoggedInCopyWith<$Res> {
  factory _$$onLoggedInCopyWith(
          _$onLoggedIn value, $Res Function(_$onLoggedIn) then) =
      __$$onLoggedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onLoggedInCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res>
    implements _$$onLoggedInCopyWith<$Res> {
  __$$onLoggedInCopyWithImpl(
      _$onLoggedIn _value, $Res Function(_$onLoggedIn) _then)
      : super(_value, (v) => _then(v as _$onLoggedIn));

  @override
  _$onLoggedIn get _value => super._value as _$onLoggedIn;
}

/// @nodoc

class _$onLoggedIn with DiagnosticableTreeMixin implements onLoggedIn {
  const _$onLoggedIn();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState.onLoggedInState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainState.onLoggedInState'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onLoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoadState,
    required TResult Function(User? user) onAuthState,
    required TResult Function() onLogoutState,
    required TResult Function() onErrorState,
    required TResult Function() onLoggedInState,
  }) {
    return onLoggedInState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoadState,
    TResult Function(User? user)? onAuthState,
    TResult Function()? onLogoutState,
    TResult Function()? onErrorState,
    TResult Function()? onLoggedInState,
  }) {
    return onLoggedInState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoadState,
    TResult Function(User? user)? onAuthState,
    TResult Function()? onLogoutState,
    TResult Function()? onErrorState,
    TResult Function()? onLoggedInState,
    required TResult orElse(),
  }) {
    if (onLoggedInState != null) {
      return onLoggedInState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoading value) onLoadState,
    required TResult Function(onAuthentication value) onAuthState,
    required TResult Function(onLogout value) onLogoutState,
    required TResult Function(onError value) onErrorState,
    required TResult Function(onLoggedIn value) onLoggedInState,
  }) {
    return onLoggedInState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoading value)? onLoadState,
    TResult Function(onAuthentication value)? onAuthState,
    TResult Function(onLogout value)? onLogoutState,
    TResult Function(onError value)? onErrorState,
    TResult Function(onLoggedIn value)? onLoggedInState,
  }) {
    return onLoggedInState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoading value)? onLoadState,
    TResult Function(onAuthentication value)? onAuthState,
    TResult Function(onLogout value)? onLogoutState,
    TResult Function(onError value)? onErrorState,
    TResult Function(onLoggedIn value)? onLoggedInState,
    required TResult orElse(),
  }) {
    if (onLoggedInState != null) {
      return onLoggedInState(this);
    }
    return orElse();
  }
}

abstract class onLoggedIn implements MainState {
  const factory onLoggedIn() = _$onLoggedIn;
}
