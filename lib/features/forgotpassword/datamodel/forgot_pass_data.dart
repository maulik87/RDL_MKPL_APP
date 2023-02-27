import 'package:json_annotation/json_annotation.dart';

part 'forgot_pass_data.g.dart';

@JsonSerializable()
class ForgotPassData {
  ForgotPassData({
    required this.message,
  });

  factory ForgotPassData.fromJson(Map<String, dynamic> json) =>
      _$ForgotPassDataFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPassDataToJson(this);

  @JsonKey(name: 'message')
  final String message;
}
