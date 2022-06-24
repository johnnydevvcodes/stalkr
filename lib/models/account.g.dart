// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$$_AccountFromJson(Map<String, dynamic> json) => _$_Account(
      imageUrl: json['imageUrl'] as String? ?? 'No image',
      name: json['name'] as String? ?? 'Unknown',
      status: json['status'] as String?,
      number: json['number'] as int?,
      birthDate: json['birthDate'] as String?,
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'status': instance.status,
      'number': instance.number,
      'birthDate': instance.birthDate,
    };
