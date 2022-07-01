import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'main_event.freezed.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.onLoad() = onLoadingEvent;

  const factory MainEvent.onAuth(User? user) = onAuthenticationEvent;

  const factory MainEvent.onLogout() = onLogoutEvent;

  const factory MainEvent.onError() = onErrorEvent;
}
