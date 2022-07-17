import 'dart:async';

import 'package:sembast/sembast.dart';
import 'package:stalkr/domain/account.dart';
import 'package:stalkr/core/app_db.dart';

class AccountDaoSembast {
  final _accountDbStore = StoreRef.main();
  final _accountKey = 'accountKey';
  //var store = intMapStoreFactory.store('accounts');

  Future<Database> get _database async => await AppDatabase().database;

  Future<void> saveAccount(account) async {
    //update

    print(account.runtimeType);
    var acct = await _accountDbStore
        .record(_accountKey)
        .update(await _database, account);

    if (acct == null) {
      acct = await _accountDbStore
          .record(_accountKey)
          .put(await _database, account);
    }

    //print(_accountDbStore.record(_accountKey).get(await _database).toString());
  }

  Future getSavedAccounts() async {
    var db = await _database;
    var val = await _accountDbStore.record(_accountKey).get(db);
    return val;
  }

  /* Future<Account> getSavedAccount() async {
    var db = await _database;
    var val = await _accountDbStore.record(_accountKey).get(db);
    return val != null ? Account.fromJson(val) : Account();
  } */

  // ATTEMPT AT GETTING MULTIPLE ACCOUNTS BUT REALIZED THIS IS NOT SQL AND WE ARE ONLY RETRIEVING 1
  /* Future<List<Account>> getSavedAccounts() async {
    var db = await _database;
    var val = await _accountDbStore.records().get()
  }
 */
  Stream<Account> getAccountDbChanges() {
    var controller = StreamController<Account>();
    _database.then((db) {
      _accountDbStore.record(_accountKey).onSnapshot(db).listen((snapshot) {
        // if snapshot is null, the record is not present or has been
        // deleted
        // ...
        if (snapshot != null) {
          var account = Account.fromJson(snapshot.value);
          controller.add(account);
        }
      });
    });
    return controller.stream;
  }

  Future<dynamic> clearCachedAccount() async {
    var db = await _database;
    return await db.transaction((transaction) async {
      return await _accountDbStore.record(_accountKey).delete(transaction);
    });
  }
}
