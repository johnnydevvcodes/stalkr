import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:stalkr/domain/account.dart';
import 'package:stalkr/domain/i_account_repo.dart';
import 'package:stalkr/infra/account/account_dao.dart';

@LazySingleton(as: IAccountRepo)
class AccountRepo extends IAccountRepo {
  var _accountDao = AccountDao();

  @override
  Future getSavedAccount() {
    return _accountDao.getSavedAccount();
  }

  /*  @override
  Stream getAccountDbChanges() {
    return _accountDao.getAccountDbChanges();
  } */

 

  @override
  Future<List<dynamic>> getAccounts() async {
    return await _accountDao.getAccounts();
  }

  @override
  User? getUser() {
    try {
      final userCredential = FirebaseAuth.instance.signInAnonymously();
      print("Signed in with temporary account.");
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "operation-not-allowed":
          print("Anonymous auth hasn't been enabled for this project.");
          break;
        default:
          print("Unknown error.");
      }
    }

    return FirebaseAuth.instance.currentUser;
  }
}
