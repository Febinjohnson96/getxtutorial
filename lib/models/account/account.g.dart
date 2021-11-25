// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) => Account(
      json['_id'] as String?,
      json['name'] as String?,
      json['gender'] as String?,
      json['age'] as String?,
      json['expiry_date'] as String?,
      json['valid_till'] as String?,
      json['payment_plan'] as String?,
    );

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'age': instance.age,
      'expiry_date': instance.expiryDate,
      'valid_till': instance.validtill,
      'payment_plan': instance.paymentplan,
    };
