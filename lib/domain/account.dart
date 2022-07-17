import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  factory Account({
    
    String? docRef,
    @Default('Unknown') String name,
    @Default('https://avatars.dicebear.com/api/adventurer/random.svg') String? imageUrl,
    @Default('No stats') String? status,
    @Default(63) int? number,
    @Default('dd/mm/yyyy') String? birthDate,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
