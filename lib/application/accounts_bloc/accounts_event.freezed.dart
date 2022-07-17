// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'accounts_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(User? user) onAdd,
    required TResult Function(List<dynamic> accountsList) onInitial,
    required TResult Function() onRefresh,
    required TResult Function() onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAdd,
    TResult Function(List<dynamic> accountsList)? onInitial,
    TResult Function()? onRefresh,
    TResult Function()? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAdd,
    TResult Function(List<dynamic> accountsList)? onInitial,
    TResult Function()? onRefresh,
    TResult Function()? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onLoadingEvent value) onLoad,
    required TResult Function(onAddEvent value) onAdd,
    required TResult Function(onInitialEvent value) onInitial,
    required TResult Function(onRefreshEvent value) onRefresh,
    required TResult Function(onErrorEvent value) onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAddEvent value)? onAdd,
    TResult Function(onInitialEvent value)? onInitial,
    TResult Function(onRefreshEvent value)? onRefresh,
    TResult Function(onErrorEvent value)? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAddEvent value)? onAdd,
    TResult Function(onInitialEvent value)? onInitial,
    TResult Function(onRefreshEvent value)? onRefresh,
    TResult Function(onErrorEvent value)? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsEventCopyWith<$Res> {
  factory $AccountsEventCopyWith(
          AccountsEvent value, $Res Function(AccountsEvent) then) =
      _$AccountsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountsEventCopyWithImpl<$Res>
    implements $AccountsEventCopyWith<$Res> {
  _$AccountsEventCopyWithImpl(this._value, this._then);

  final AccountsEvent _value;
  // ignore: unused_field
  final $Res Function(AccountsEvent) _then;
}

/// @nodoc
abstract class _$$onLoadingEventCopyWith<$Res> {
  factory _$$onLoadingEventCopyWith(
          _$onLoadingEvent value, $Res Function(_$onLoadingEvent) then) =
      __$$onLoadingEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onLoadingEventCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res>
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
    return 'AccountsEvent.onLoad()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AccountsEvent.onLoad'));
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
    required TResult Function(User? user) onAdd,
    required TResult Function(List<dynamic> accountsList) onInitial,
    required TResult Function() onRefresh,
    required TResult Function() onError,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAdd,
    TResult Function(List<dynamic> accountsList)? onInitial,
    TResult Function()? onRefresh,
    TResult Function()? onError,
  }) {
    return onLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAdd,
    TResult Function(List<dynamic> accountsList)? onInitial,
    TResult Function()? onRefresh,
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
    required TResult Function(onAddEvent value) onAdd,
    required TResult Function(onInitialEvent value) onInitial,
    required TResult Function(onRefreshEvent value) onRefresh,
    required TResult Function(onErrorEvent value) onError,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAddEvent value)? onAdd,
    TResult Function(onInitialEvent value)? onInitial,
    TResult Function(onRefreshEvent value)? onRefresh,
    TResult Function(onErrorEvent value)? onError,
  }) {
    return onLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAddEvent value)? onAdd,
    TResult Function(onInitialEvent value)? onInitial,
    TResult Function(onRefreshEvent value)? onRefresh,
    TResult Function(onErrorEvent value)? onError,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class onLoadingEvent implements AccountsEvent {
  const factory onLoadingEvent() = _$onLoadingEvent;
}

/// @nodoc
abstract class _$$onAddEventCopyWith<$Res> {
  factory _$$onAddEventCopyWith(
          _$onAddEvent value, $Res Function(_$onAddEvent) then) =
      __$$onAddEventCopyWithImpl<$Res>;
  $Res call({User? user});
}

/// @nodoc
class __$$onAddEventCopyWithImpl<$Res> extends _$AccountsEventCopyWithImpl<$Res>
    implements _$$onAddEventCopyWith<$Res> {
  __$$onAddEventCopyWithImpl(
      _$onAddEvent _value, $Res Function(_$onAddEvent) _then)
      : super(_value, (v) => _then(v as _$onAddEvent));

  @override
  _$onAddEvent get _value => super._value as _$onAddEvent;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$onAddEvent(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$onAddEvent with DiagnosticableTreeMixin implements onAddEvent {
  const _$onAddEvent(this.user);

  @override
  final User? user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountsEvent.onAdd(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountsEvent.onAdd'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onAddEvent &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$onAddEventCopyWith<_$onAddEvent> get copyWith =>
      __$$onAddEventCopyWithImpl<_$onAddEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(User? user) onAdd,
    required TResult Function(List<dynamic> accountsList) onInitial,
    required TResult Function() onRefresh,
    required TResult Function() onError,
  }) {
    return onAdd(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAdd,
    TResult Function(List<dynamic> accountsList)? onInitial,
    TResult Function()? onRefresh,
    TResult Function()? onError,
  }) {
    return onAdd?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAdd,
    TResult Function(List<dynamic> accountsList)? onInitial,
    TResult Function()? onRefresh,
    TResult Function()? onError,
    required TResult orElse(),
  }) {
    if (onAdd != null) {
      return onAdd(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onLoadingEvent value) onLoad,
    required TResult Function(onAddEvent value) onAdd,
    required TResult Function(onInitialEvent value) onInitial,
    required TResult Function(onRefreshEvent value) onRefresh,
    required TResult Function(onErrorEvent value) onError,
  }) {
    return onAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAddEvent value)? onAdd,
    TResult Function(onInitialEvent value)? onInitial,
    TResult Function(onRefreshEvent value)? onRefresh,
    TResult Function(onErrorEvent value)? onError,
  }) {
    return onAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAddEvent value)? onAdd,
    TResult Function(onInitialEvent value)? onInitial,
    TResult Function(onRefreshEvent value)? onRefresh,
    TResult Function(onErrorEvent value)? onError,
    required TResult orElse(),
  }) {
    if (onAdd != null) {
      return onAdd(this);
    }
    return orElse();
  }
}

abstract class onAddEvent implements AccountsEvent {
  const factory onAddEvent(final User? user) = _$onAddEvent;

  User? get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$onAddEventCopyWith<_$onAddEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onInitialEventCopyWith<$Res> {
  factory _$$onInitialEventCopyWith(
          _$onInitialEvent value, $Res Function(_$onInitialEvent) then) =
      __$$onInitialEventCopyWithImpl<$Res>;
  $Res call({List<dynamic> accountsList});
}

/// @nodoc
class __$$onInitialEventCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res>
    implements _$$onInitialEventCopyWith<$Res> {
  __$$onInitialEventCopyWithImpl(
      _$onInitialEvent _value, $Res Function(_$onInitialEvent) _then)
      : super(_value, (v) => _then(v as _$onInitialEvent));

  @override
  _$onInitialEvent get _value => super._value as _$onInitialEvent;

  @override
  $Res call({
    Object? accountsList = freezed,
  }) {
    return _then(_$onInitialEvent(
      accountsList == freezed
          ? _value._accountsList
          : accountsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$onInitialEvent with DiagnosticableTreeMixin implements onInitialEvent {
  const _$onInitialEvent(final List<dynamic> accountsList)
      : _accountsList = accountsList;

  final List<dynamic> _accountsList;
  @override
  List<dynamic> get accountsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accountsList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountsEvent.onInitial(accountsList: $accountsList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountsEvent.onInitial'))
      ..add(DiagnosticsProperty('accountsList', accountsList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onInitialEvent &&
            const DeepCollectionEquality()
                .equals(other._accountsList, _accountsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_accountsList));

  @JsonKey(ignore: true)
  @override
  _$$onInitialEventCopyWith<_$onInitialEvent> get copyWith =>
      __$$onInitialEventCopyWithImpl<_$onInitialEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(User? user) onAdd,
    required TResult Function(List<dynamic> accountsList) onInitial,
    required TResult Function() onRefresh,
    required TResult Function() onError,
  }) {
    return onInitial(accountsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAdd,
    TResult Function(List<dynamic> accountsList)? onInitial,
    TResult Function()? onRefresh,
    TResult Function()? onError,
  }) {
    return onInitial?.call(accountsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAdd,
    TResult Function(List<dynamic> accountsList)? onInitial,
    TResult Function()? onRefresh,
    TResult Function()? onError,
    required TResult orElse(),
  }) {
    if (onInitial != null) {
      return onInitial(accountsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onLoadingEvent value) onLoad,
    required TResult Function(onAddEvent value) onAdd,
    required TResult Function(onInitialEvent value) onInitial,
    required TResult Function(onRefreshEvent value) onRefresh,
    required TResult Function(onErrorEvent value) onError,
  }) {
    return onInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAddEvent value)? onAdd,
    TResult Function(onInitialEvent value)? onInitial,
    TResult Function(onRefreshEvent value)? onRefresh,
    TResult Function(onErrorEvent value)? onError,
  }) {
    return onInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAddEvent value)? onAdd,
    TResult Function(onInitialEvent value)? onInitial,
    TResult Function(onRefreshEvent value)? onRefresh,
    TResult Function(onErrorEvent value)? onError,
    required TResult orElse(),
  }) {
    if (onInitial != null) {
      return onInitial(this);
    }
    return orElse();
  }
}

abstract class onInitialEvent implements AccountsEvent {
  const factory onInitialEvent(final List<dynamic> accountsList) =
      _$onInitialEvent;

  List<dynamic> get accountsList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$onInitialEventCopyWith<_$onInitialEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onRefreshEventCopyWith<$Res> {
  factory _$$onRefreshEventCopyWith(
          _$onRefreshEvent value, $Res Function(_$onRefreshEvent) then) =
      __$$onRefreshEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onRefreshEventCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res>
    implements _$$onRefreshEventCopyWith<$Res> {
  __$$onRefreshEventCopyWithImpl(
      _$onRefreshEvent _value, $Res Function(_$onRefreshEvent) _then)
      : super(_value, (v) => _then(v as _$onRefreshEvent));

  @override
  _$onRefreshEvent get _value => super._value as _$onRefreshEvent;
}

/// @nodoc

class _$onRefreshEvent with DiagnosticableTreeMixin implements onRefreshEvent {
  const _$onRefreshEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountsEvent.onRefresh()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AccountsEvent.onRefresh'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onRefreshEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(User? user) onAdd,
    required TResult Function(List<dynamic> accountsList) onInitial,
    required TResult Function() onRefresh,
    required TResult Function() onError,
  }) {
    return onRefresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAdd,
    TResult Function(List<dynamic> accountsList)? onInitial,
    TResult Function()? onRefresh,
    TResult Function()? onError,
  }) {
    return onRefresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAdd,
    TResult Function(List<dynamic> accountsList)? onInitial,
    TResult Function()? onRefresh,
    TResult Function()? onError,
    required TResult orElse(),
  }) {
    if (onRefresh != null) {
      return onRefresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onLoadingEvent value) onLoad,
    required TResult Function(onAddEvent value) onAdd,
    required TResult Function(onInitialEvent value) onInitial,
    required TResult Function(onRefreshEvent value) onRefresh,
    required TResult Function(onErrorEvent value) onError,
  }) {
    return onRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAddEvent value)? onAdd,
    TResult Function(onInitialEvent value)? onInitial,
    TResult Function(onRefreshEvent value)? onRefresh,
    TResult Function(onErrorEvent value)? onError,
  }) {
    return onRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAddEvent value)? onAdd,
    TResult Function(onInitialEvent value)? onInitial,
    TResult Function(onRefreshEvent value)? onRefresh,
    TResult Function(onErrorEvent value)? onError,
    required TResult orElse(),
  }) {
    if (onRefresh != null) {
      return onRefresh(this);
    }
    return orElse();
  }
}

abstract class onRefreshEvent implements AccountsEvent {
  const factory onRefreshEvent() = _$onRefreshEvent;
}

/// @nodoc
abstract class _$$onErrorEventCopyWith<$Res> {
  factory _$$onErrorEventCopyWith(
          _$onErrorEvent value, $Res Function(_$onErrorEvent) then) =
      __$$onErrorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onErrorEventCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res>
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
    return 'AccountsEvent.onError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AccountsEvent.onError'));
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
    required TResult Function(User? user) onAdd,
    required TResult Function(List<dynamic> accountsList) onInitial,
    required TResult Function() onRefresh,
    required TResult Function() onError,
  }) {
    return onError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAdd,
    TResult Function(List<dynamic> accountsList)? onInitial,
    TResult Function()? onRefresh,
    TResult Function()? onError,
  }) {
    return onError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(User? user)? onAdd,
    TResult Function(List<dynamic> accountsList)? onInitial,
    TResult Function()? onRefresh,
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
    required TResult Function(onAddEvent value) onAdd,
    required TResult Function(onInitialEvent value) onInitial,
    required TResult Function(onRefreshEvent value) onRefresh,
    required TResult Function(onErrorEvent value) onError,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAddEvent value)? onAdd,
    TResult Function(onInitialEvent value)? onInitial,
    TResult Function(onRefreshEvent value)? onRefresh,
    TResult Function(onErrorEvent value)? onError,
  }) {
    return onError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onLoadingEvent value)? onLoad,
    TResult Function(onAddEvent value)? onAdd,
    TResult Function(onInitialEvent value)? onInitial,
    TResult Function(onRefreshEvent value)? onRefresh,
    TResult Function(onErrorEvent value)? onError,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class onErrorEvent implements AccountsEvent {
  const factory onErrorEvent() = _$onErrorEvent;
}
