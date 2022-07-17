import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stalkr/domain/account.dart';

abstract class IUserService {
  late final CollectionReference users;
  void saveAccount(Account account);
  void updateAccount(Account account);
  void deleteAccount(Account account);
  void saveAccountSembast(Account account);
}
