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

  @override
  Stream getAccountDbChanges() {
    return _accountDao.getAccountDbChanges();
  }

  @override
  Future saveAccount(Account account) {
    return _accountDao.saveAccount(account);
  }

  @override
  User? getUser() {
    return FirebaseAuth.instance.currentUser;
  }
}
