import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:stalkr/infra/account/account_dao_old.dart';

import '../../domain/account.dart';
import '../account/account_dao.dart';
import 'i_user_service.dart';

@LazySingleton(as: IUserService)
class UserService extends IUserService {
  @override
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  final _accountDao = AccountDao();
  final _accountDaoSembast = AccountDaoSembast();

  @override
  void saveAccount(Account account) async {
    var input = account.toJson();
    DocumentReference docReference = users.doc();
    String docReferenceId = docReference.id;
    input['docRef'] = docReferenceId;
    _accountDaoSembast.saveAccount(Account.fromJson(input));
    await users.doc(docReferenceId).set(input);
  }

  @override
  void updateAccount(Account account) async {
    var input = account.toJson();
    await users.doc(account.docRef).update(input);
  }

  @override
  void deleteAccount(Account account) async {
    await users.doc(account.docRef).delete();
  }

  @override
  void saveAccountSembast(Account account) async {
    AccountDaoSembast().saveAccount(account);
  }

  // ADD FIRESTORE LISTENER

}
