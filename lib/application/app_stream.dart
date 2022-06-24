import 'dart:async';

import '../models/account.dart';
import '../storage/account_dao.dart';

class AppStream {
  var inputController = StreamController<Account>();
  var outputController = StreamController<Account>.broadcast();
  StreamSubscription<Account?>? inputSubscriber;
  var accountDao = AccountDao();
  AppStream() {
    inputController.stream.listen((Account account) {
      outputController.sink.add(account);
    });

    //listen to db
    //update valInput
  }

  Stream<Account> get valOutput => outputController.stream;

  StreamSink<Account> get valInput => inputController.sink;

  dispose() {
    inputSubscriber?.cancel();
  }

  //save to db

  //for init
  //get Account from db
  //sink to valinput

  //ValueNotifier
  //valuenotifierObject.value = "newValue"
  //valuenotifierObject.notifyListeners()

  //future sample
  Future<Account>  getAccountFuture() {
    return accountDao.getSavedAccount();
  }
}
