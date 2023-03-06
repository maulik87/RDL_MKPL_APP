// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginData _$LoginDataFromJson(Map<String, dynamic> json) => LoginData(
      data: json['data'] == null
          ? null
          : LData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$LoginDataToJson(LoginData instance) => <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
    };

LData _$LDataFromJson(Map<String, dynamic> json) => LData(
      token: json['token'] as String,
    );

Map<String, dynamic> _$LDataToJson(LData instance) => <String, dynamic>{
      'token': instance.token,
    };
