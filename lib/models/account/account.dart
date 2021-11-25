import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

@JsonSerializable()
class Account {
  @JsonKey(name:'_id')
  String? id;
  @JsonKey(name:'name')
  String? name;
  @JsonKey(name:'gender')
  String? gender;
  @JsonKey(name:'age')
  String? age;
  @JsonKey(name:'expiry_date')
  String? expiryDate;
  @JsonKey(name:'valid_till')
  String? validtill;
  @JsonKey(name:'payment_plan')
  String? paymentplan;
  Account(this.id,this.name,this.gender,this.age,this.expiryDate,this.validtill,this.paymentplan);
  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}