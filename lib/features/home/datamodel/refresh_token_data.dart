import 'package:json_annotation/json_annotation.dart';

part 'refresh_token_data.g.dart';

@JsonSerializable()
class RefreshTokenData {
  RefreshTokenData({
    this.data,
    this.status,
    this.message,
  });

  factory RefreshTokenData.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenDataFromJson(json);

  Map<String, dynamic> toJson() => _$RefreshTokenDataToJson(this);

  final RTokenData? data;
  final bool? status;
  final String? message;
}

@JsonSerializable()
class RTokenData {
  RTokenData({
    required this.token,
  });

  final String token;

  factory RTokenData.fromJson(Map<String, dynamic> json) =>
      _$RTokenDataFromJson(json);

  Map<String, dynamic> toJson() => _$RTokenDataToJson(this);

}
