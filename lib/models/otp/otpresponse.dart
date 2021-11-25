import 'package:getxtutorial/models/account/account.dart';
import 'package:getxtutorial/models/user/user.dart';

class OtpResponse {
  OtpResponse({
    required this.success,
    required this.data,
  });

  bool success;
  dynamic data;

  factory OtpResponse.fromJson(Map<String, dynamic> json) {
    return OtpResponse(
      success: json["success"],
      data: json["data"],
    );
  }

  User? getUser() {
    return data["user"] != null && success
        ? User.fromJson(data["user"])
        : null;
  }

  List<Account> getAccounts() {
    final userDict = data["user"];
    return userDict["accounts"] != null && success
        ? List<Account>.from(
            userDict["accounts"].map((x) => Account.fromJson(x)))
        : [];
  }
}
