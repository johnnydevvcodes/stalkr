import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:stalkr/core/di/service_locator.dart';
import 'package:stalkr/domain/i_account_repo.dart';
import 'package:stalkr/infra/account/account_dao_old.dart';
import 'package:stalkr/infra/service/i_user_service.dart';

import '../../domain/account.dart';
import 'accounts_event.dart';
import 'accounts_state.dart';

class AccountsBloc extends Bloc<AccountsEvent, AccountsState> {
  var _accountRepo = locator<IAccountRepo>();
  var userService = locator<IUserService>();
  var accountsListFromFirebase;
  var accountListFromSembast;
  // AccountsBloc() : super(AccountsState.onLoadState()) {
  AccountsBloc() : super(const AccountsState.onLoadState()) {
    _onEvents();
    _dbListener();
    _onInitial();
  }

  Future<List<dynamic>> _getAccounts() {
    return _accountRepo.getAccounts();
  }

  Future<void> _refreshList() async {
    add(const AccountsEvent.onRefresh());
  }

  Future<void> _onInitial() async {
    accountsListFromFirebase = await _getAccounts();

    // save to sembast on startup
    await AccountDaoSembast().saveAccount(accountsListFromFirebase);
    // get data from sembast on startup
    accountListFromSembast = await AccountDaoSembast().getSavedAccounts();

    add(AccountsEvent.onInitial(accountListFromSembast));
  }

  //event listener
  void _onEvents() {
    on<AccountsEvent>((AccountsEvent event, Emitter<AccountsState> emit) async {
      if (event is onLoadingEvent) {
        emit(AccountsState.onLoadState());
      } else if (event is onInitialEvent) {
        emit(AccountsState.onInitialState(accountListFromSembast));
      } else if (event is onRefreshEvent) {
        //accountsList = await _getAccounts();
        accountListFromSembast = await AccountDaoSembast().getSavedAccounts();
        emit(AccountsState.onInitialState(accountListFromSembast));
      }
    });
  }

  // firebase db listener
  void _dbListener() {
    userService.users.snapshots().listen((event) async {
      accountsListFromFirebase = await _getAccounts();
      await AccountDaoSembast().saveAccount(accountsListFromFirebase);
      add(AccountsEvent.onRefresh());
    });
  }
}
