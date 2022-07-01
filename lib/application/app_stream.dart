import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import '../domain/account.dart';
import '../infra/account/account_dao.dart';

class AppStream {
  var inputController = StreamController<Account>();
  var outputController = StreamController<Account>.broadcast();
  StreamSubscription<Account?>? inputSubscriber;
  var accountDao = AccountDao();
  
  //value listenable
  ValueNotifier<Account?> accountNotifier = ValueNotifier(null);
  
  AppStream() {

    getAccountFuture().then((Account acct) {
      valInput.add(acct);
    });

    inputController.stream.listen((Account account) {
      outputController.sink.add(account);
    });

    accountDao.getAccountDbChanges().listen((account) {
      print("DB Changes: ${account}");
      inputController.sink.add(account);
      //
      accountNotifier.value = account;
      accountNotifier.notifyListeners();
    });
  }

  Stream<Account> get valOutput => outputController.stream;

  StreamSink<Account> get valInput => inputController.sink;

  Future<Account> saveAccount(Account account) {
    return accountDao.saveAccount(account);
  }

  //future sample
  Future<Account> getAccountFuture() {
    return accountDao.getSavedAccount();
  }
}
