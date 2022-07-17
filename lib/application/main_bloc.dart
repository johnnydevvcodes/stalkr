import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:stalkr/core/di/service_locator.dart';
import 'package:stalkr/domain/i_account_repo.dart';

import 'main_event.dart';
import 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  var _accountRepo = locator<IAccountRepo>();

  MainBloc() : super(MainState.onLoadState()) {
    _onEvents(); //always first
    _checkAuth();
  }

  //run once
  void _checkAuth() {
    var user = _accountRepo.getUser();
    this.add(MainEvent.onAuth(user));
  }

  void addLoadingEvent() {
    add(MainEvent.onLoad());
    emit(MainState.onLoadState());
    // print("I GOT HERE BROSKI");
  }

  //listener
  void _onEvents() {
    on<MainEvent>((MainEvent event, Emitter<MainState> emit) async {
      if (event is onLoadingEvent) {
        emit(MainState.onLoadState());
      } else if (event is onAuthenticationEvent) {
        if (event.user == null) {
          emit(MainState.onLogoutState());
        } else {
          emit(MainState.onLoggedInState());
        }
      }
    });
  }
}
