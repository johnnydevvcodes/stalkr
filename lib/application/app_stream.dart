import 'dart:async';

import 'package:stalkr/storage/app_db.dart';

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

     accountDao.getAccountDbChanges().listen((account) {
         print("DB Changes: ${account}");
        inputController.sink.add(account);
    });
  
  }
  Stream<Account> get valOutput => outputController.stream;

  StreamSink<Account> get valInput => inputController.sink;
  dispose() {
    inputSubscriber?.cancel();
  }

  //save to db
  saveToDb() async {
    valOutput.listen((event) async {
      await accountDao.saveAccount(event);
    });
    
  }



  //for init
  initializeStream() async {
    var accounts = await accountDao.getSavedAccount();

    outputController.add(accounts);
  }


  //listen to db

  //update valInput

  //get Account from db
  //sink to valinput

   
  //ValueNotifier
  //valuenotifierObject.value = "newValue"
  //valuenotifierObject.notifyListeners()

  //future sample
  Future<Account> getAccountFuture() {
    return accountDao.getSavedAccount();
  }
}
