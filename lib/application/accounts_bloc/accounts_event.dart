import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'accounts_event.freezed.dart';

@freezed
class AccountsEvent with _$AccountsEvent {
  const factory AccountsEvent.onLoad() = onLoadingEvent;

  const factory AccountsEvent.onAdd(User? user) = onAddEvent;

  const factory AccountsEvent.onInitial(List<dynamic> accountsList) = onInitialEvent;

  const factory AccountsEvent.onRefresh() = onRefreshEvent;

  const factory AccountsEvent.onError() = onErrorEvent;
}
