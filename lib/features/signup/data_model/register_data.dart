import 'package:json_annotation/json_annotation.dart';

part 'register_data.g.dart';

@JsonSerializable()
class RegisterData {
  RegisterData({
    required this.message,
  });

  factory RegisterData.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterDataToJson(this);

  @JsonKey(name: 'message')
  final String message;
}
