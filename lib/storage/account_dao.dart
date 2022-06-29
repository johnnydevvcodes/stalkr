import 'dart:async';

import 'package:sembast/sembast.dart';
import 'package:stalkr/models/account.dart';
import 'package:stalkr/storage/app_db.dart';

class AccountDao {
  final _accountDbStore = StoreRef.main();
  final _accountKey = 'accountKey';

  Future<Database> get _database async => await AppDatabase().database;

  Future<Account> saveAccount(Account account) async {
    //update
    var acct = await _accountDbStore
        .record(_accountKey)
        .update(await _database, account.toJson());

    if (acct == null) {
      acct = await _accountDbStore
          .record(_accountKey)
          .put(await _database, account.toJson());
    }
    //
    return Account.fromJson(acct);
  }

  Future<Account> getSavedAccount() async {
    var db = await _database;
    var val = await _accountDbStore.record(_accountKey).get(db);
    return val != null ? Account.fromJson(val) : Account();
  }

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
