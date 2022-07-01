import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.onLoadState() = OnLoading;

  const factory MainState.onAuthState(User? user) = onAuthentication;

  const factory MainState.onLogoutState() = onLogout;

  const factory MainState.onErrorState() = onError;

  const factory MainState.onLoggedInState() = onLoggedIn;
}
