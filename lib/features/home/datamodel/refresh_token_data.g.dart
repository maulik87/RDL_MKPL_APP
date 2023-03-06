// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefreshTokenData _$RefreshTokenDataFromJson(Map<String, dynamic> json) =>
    RefreshTokenData(
      data: json['data'] == null
          ? null
          : RTokenData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$RefreshTokenDataToJson(RefreshTokenData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
    };

RTokenData _$RTokenDataFromJson(Map<String, dynamic> json) => RTokenData(
      token: json['token'] as String,
    );

Map<String, dynamic> _$RTokenDataToJson(RTokenData instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
