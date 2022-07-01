// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(User? user) onAuth,
    required TResult Function() onLogout,
    required TResult Function() onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAuth,
    TResult Function()? onLogout,
    TResult Function()? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAuth,
    TResult Function()? onLogout,
    TResult Function()? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onLoadingEvent value) onLoad,
    required TResult Function(onAuthenticationEvent value) onAuth,
    required TResult Function(onLogoutEvent value) onLogout,
    required TResult Function(onErrorEvent value) onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAuthenticationEvent value)? onAuth,
    TResult Function(onLogoutEvent value)? onLogout,
    TResult Function(onErrorEvent value)? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAuthenticationEvent value)? onAuth,
    TResult Function(onLogoutEvent value)? onLogout,
    TResult Function(onErrorEvent value)? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res> implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  final MainEvent _value;
  // ignore: unused_field
  final $Res Function(MainEvent) _then;
}

/// @nodoc
abstract class _$$onLoadingEventCopyWith<$Res> {
  factory _$$onLoadingEventCopyWith(
          _$onLoadingEvent value, $Res Function(_$onLoadingEvent) then) =
      __$$onLoadingEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onLoadingEventCopyWithImpl<$Res> extends _$MainEventCopyWithImpl<$Res>
    implements _$$onLoadingEventCopyWith<$Res> {
  __$$onLoadingEventCopyWithImpl(
      _$onLoadingEvent _value, $Res Function(_$onLoadingEvent) _then)
      : super(_value, (v) => _then(v as _$onLoadingEvent));

  @override
  _$onLoadingEvent get _value => super._value as _$onLoadingEvent;
}

/// @nodoc

class _$onLoadingEvent with DiagnosticableTreeMixin implements onLoadingEvent {
  const _$onLoadingEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.onLoad()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainEvent.onLoad'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onLoadingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(User? user) onAuth,
    required TResult Function() onLogout,
    required TResult Function() onError,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAuth,
    TResult Function()? onLogout,
    TResult Function()? onError,
  }) {
    return onLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAuth,
    TResult Function()? onLogout,
    TResult Function()? onError,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onLoadingEvent value) onLoad,
    required TResult Function(onAuthenticationEvent value) onAuth,
    required TResult Function(onLogoutEvent value) onLogout,
    required TResult Function(onErrorEvent value) onError,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAuthenticationEvent value)? onAuth,
    TResult Function(onLogoutEvent value)? onLogout,
    TResult Function(onErrorEvent value)? onError,
  }) {
    return onLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAuthenticationEvent value)? onAuth,
    TResult Function(onLogoutEvent value)? onLogout,
    TResult Function(onErrorEvent value)? onError,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class onLoadingEvent implements MainEvent {
  const factory onLoadingEvent() = _$onLoadingEvent;
}

/// @nodoc
abstract class _$$onAuthenticationEventCopyWith<$Res> {
  factory _$$onAuthenticationEventCopyWith(_$onAuthenticationEvent value,
          $Res Function(_$onAuthenticationEvent) then) =
      __$$onAuthenticationEventCopyWithImpl<$Res>;
  $Res call({User? user});
}

/// @nodoc
class __$$onAuthenticationEventCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res>
    implements _$$onAuthenticationEventCopyWith<$Res> {
  __$$onAuthenticationEventCopyWithImpl(_$onAuthenticationEvent _value,
      $Res Function(_$onAuthenticationEvent) _then)
      : super(_value, (v) => _then(v as _$onAuthenticationEvent));

  @override
  _$onAuthenticationEvent get _value => super._value as _$onAuthenticationEvent;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$onAuthenticationEvent(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$onAuthenticationEvent
    with DiagnosticableTreeMixin
    implements onAuthenticationEvent {
  const _$onAuthenticationEvent(this.user);

  @override
  final User? user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.onAuth(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainEvent.onAuth'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onAuthenticationEvent &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$onAuthenticationEventCopyWith<_$onAuthenticationEvent> get copyWith =>
      __$$onAuthenticationEventCopyWithImpl<_$onAuthenticationEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(User? user) onAuth,
    required TResult Function() onLogout,
    required TResult Function() onError,
  }) {
    return onAuth(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAuth,
    TResult Function()? onLogout,
    TResult Function()? onError,
  }) {
    return onAuth?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAuth,
    TResult Function()? onLogout,
    TResult Function()? onError,
    required TResult orElse(),
  }) {
    if (onAuth != null) {
      return onAuth(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onLoadingEvent value) onLoad,
    required TResult Function(onAuthenticationEvent value) onAuth,
    required TResult Function(onLogoutEvent value) onLogout,
    required TResult Function(onErrorEvent value) onError,
  }) {
    return onAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAuthenticationEvent value)? onAuth,
    TResult Function(onLogoutEvent value)? onLogout,
    TResult Function(onErrorEvent value)? onError,
  }) {
    return onAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAuthenticationEvent value)? onAuth,
    TResult Function(onLogoutEvent value)? onLogout,
    TResult Function(onErrorEvent value)? onError,
    required TResult orElse(),
  }) {
    if (onAuth != null) {
      return onAuth(this);
    }
    return orElse();
  }
}

abstract class onAuthenticationEvent implements MainEvent {
  const factory onAuthenticationEvent(final User? user) =
      _$onAuthenticationEvent;

  User? get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$onAuthenticationEventCopyWith<_$onAuthenticationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onLogoutEventCopyWith<$Res> {
  factory _$$onLogoutEventCopyWith(
          _$onLogoutEvent value, $Res Function(_$onLogoutEvent) then) =
      __$$onLogoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onLogoutEventCopyWithImpl<$Res> extends _$MainEventCopyWithImpl<$Res>
    implements _$$onLogoutEventCopyWith<$Res> {
  __$$onLogoutEventCopyWithImpl(
      _$onLogoutEvent _value, $Res Function(_$onLogoutEvent) _then)
      : super(_value, (v) => _then(v as _$onLogoutEvent));

  @override
  _$onLogoutEvent get _value => super._value as _$onLogoutEvent;
}

/// @nodoc

class _$onLogoutEvent with DiagnosticableTreeMixin implements onLogoutEvent {
  const _$onLogoutEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.onLogout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainEvent.onLogout'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onLogoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(User? user) onAuth,
    required TResult Function() onLogout,
    required TResult Function() onError,
  }) {
    return onLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAuth,
    TResult Function()? onLogout,
    TResult Function()? onError,
  }) {
    return onLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAuth,
    TResult Function()? onLogout,
    TResult Function()? onError,
    required TResult orElse(),
  }) {
    if (onLogout != null) {
      return onLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onLoadingEvent value) onLoad,
    required TResult Function(onAuthenticationEvent value) onAuth,
    required TResult Function(onLogoutEvent value) onLogout,
    required TResult Function(onErrorEvent value) onError,
  }) {
    return onLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAuthenticationEvent value)? onAuth,
    TResult Function(onLogoutEvent value)? onLogout,
    TResult Function(onErrorEvent value)? onError,
  }) {
    return onLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAuthenticationEvent value)? onAuth,
    TResult Function(onLogoutEvent value)? onLogout,
    TResult Function(onErrorEvent value)? onError,
    required TResult orElse(),
  }) {
    if (onLogout != null) {
      return onLogout(this);
    }
    return orElse();
  }
}

abstract class onLogoutEvent implements MainEvent {
  const factory onLogoutEvent() = _$onLogoutEvent;
}

/// @nodoc
abstract class _$$onErrorEventCopyWith<$Res> {
  factory _$$onErrorEventCopyWith(
          _$onErrorEvent value, $Res Function(_$onErrorEvent) then) =
      __$$onErrorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onErrorEventCopyWithImpl<$Res> extends _$MainEventCopyWithImpl<$Res>
    implements _$$onErrorEventCopyWith<$Res> {
  __$$onErrorEventCopyWithImpl(
      _$onErrorEvent _value, $Res Function(_$onErrorEvent) _then)
      : super(_value, (v) => _then(v as _$onErrorEvent));

  @override
  _$onErrorEvent get _value => super._value as _$onErrorEvent;
}

/// @nodoc

class _$onErrorEvent with DiagnosticableTreeMixin implements onErrorEvent {
  const _$onErrorEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.onError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainEvent.onError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onErrorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(User? user) onAuth,
    required TResult Function() onLogout,
    required TResult Function() onError,
  }) {
    return onError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAuth,
    TResult Function()? onLogout,
    TResult Function()? onError,
  }) {
    return onError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAuth,
    TResult Function()? onLogout,
    TResult Function()? onError,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onLoadingEvent value) onLoad,
    required TResult Function(onAuthenticationEvent value) onAuth,
    required TResult Function(onLogoutEvent value) onLogout,
    required TResult Function(onErrorEvent value) onError,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAuthenticationEvent value)? onAuth,
    TResult Function(onLogoutEvent value)? onLogout,
    TResult Function(onErrorEvent value)? onError,
  }) {
    return onError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAuthenticationEvent value)? onAuth,
    TResult Function(onLogoutEvent value)? onLogout,
    TResult Function(onErrorEvent value)? onError,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class onErrorEvent implements MainEvent {
  const factory onErrorEvent() = _$onErrorEvent;
}
