import 'package:firebase_auth/firebase_auth.dart';
import 'package:stalkr/domain/account.dart';

abstract class IAccountRepo {
  Future saveAccount(Account account);
  Future getSavedAccount();
  Stream getAccountDbChanges();

  User? getUser();
}
