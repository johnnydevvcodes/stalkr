import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sembast/sembast.dart';
import 'package:stalkr/domain/account.dart';
import 'package:stalkr/core/app_db.dart';

class AccountDao {
  final _accountDbStore = StoreRef.main();
  final _accountKey = 'accountKey';

    CollectionReference users = FirebaseFirestore.instance.collection('users');

  void editAccount(Account account) async {
    var input = account.toJson();

  }

  Future<List<dynamic>> getAccounts() async {
    QuerySnapshot querySnapshot = await users.get();

    // Get data from docs and convert map to List
    final allData =
        querySnapshot.docs.map((account) => account.data()).toList();

    //return allData as List<Account>;
    return allData.toList();
  }

  Future<Account> getSavedAccount() async {
    return Account();
  }
}
