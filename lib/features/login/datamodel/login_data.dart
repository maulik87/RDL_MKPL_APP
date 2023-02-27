import 'package:json_annotation/json_annotation.dart';

part 'login_data.g.dart';

@JsonSerializable()
class LoginData {
  LoginData({
    this.data,
    this.success,
    this.message,
  });

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);

  Map<String, dynamic> toJson() => _$LoginDataToJson(this);

  final LData? data;
  final bool? success;
  final String? message;
}

@JsonSerializable()
class LData {
  LData({
    required this.token,
  });

  final String token;

  factory LData.fromJson(Map<String, dynamic> json) =>
      _$LDataFromJson(json);

  Map<String, dynamic> toJson() => _$LDataToJson(this);

}
