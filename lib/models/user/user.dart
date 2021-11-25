import 'package:json_annotation/json_annotation.dart';
import 'package:getxtutorial/models/account/account.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name:'_id')
  String? id;
  @JsonKey(name:'name')
  String? name;
  @JsonKey(name:'email')
  String? email;
  @JsonKey(name:'countryCode')
  String? countryCode;
  @JsonKey(name:'mobile')
  String? mobile;
  User(this.id,this.name,this.email,this.countryCode,this.mobile);
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}