import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'accounts_state.freezed.dart';

@freezed
class AccountsState with _$AccountsState {
  const factory AccountsState.onLoadState() = OnLoading;

  const factory AccountsState.onAddState(User? user)   = onAdd;

  const factory AccountsState.onInitialState(List<dynamic> accountsList ) = onInitial ;

  const factory AccountsState.onErrorState() = onError;

  const factory AccountsState.onRefreshState() = onRefresh;
}
