// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$$_AccountFromJson(Map<String, dynamic> json) => _$_Account(
      name: json['name'] as String? ?? 'Unknown',
      imageUrl: json['imageUrl'] as String? ??
          'https://avatars.dicebear.com/api/adventurer/random.svg',
      status: json['status'] as String? ?? 'No stats',
      number: json['number'] as int? ?? 63,
      birthDate: json['birthDate'] as String? ?? 'dd/mm/yyyy',
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'status': instance.status,
      'number': instance.number,
      'birthDate': instance.birthDate,
    };
