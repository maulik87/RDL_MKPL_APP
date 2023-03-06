// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileData _$ProfileDataFromJson(Map<String, dynamic> json) => ProfileData(
      data: json['data'] == null
          ? null
          : UserProfile.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ProfileDataToJson(ProfileData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
    };

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => UserProfile(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      userDetail: json['user_detail'] == null
          ? null
          : UserDetail.fromJson(json['user_detail'] as Map<String, dynamic>),
      isNewUser: json['is_new_user'] as bool?,
    );

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'user_detail': instance.userDetail,
      'is_new_user': instance.isNewUser,
    };

UserDetail _$UserDetailFromJson(Map<String, dynamic> json) => UserDetail(
      id: json['id'] as int?,
      companyName: json['company_name'] as String?,
      companyEmail: json['company_email'] as String?,
      companyPhone: json['company_phone'] as String?,
      countryCode: json['country_code'] as int?,
      email: json['email'] as String?,
      fullAddress: json['full_address'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipCode: json['zip_code'],
      representativeName: json['representative_name'] as String?,
      representativePhone: json['representative_phone'] as String?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$UserDetailToJson(UserDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_name': instance.companyName,
      'company_email': instance.companyEmail,
      'company_phone': instance.companyPhone,
      'country_code': instance.countryCode,
      'email': instance.email,
      'full_address': instance.fullAddress,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'zip_code': instance.zipCode,
      'representative_name': instance.representativeName,
      'representative_phone': instance.representativePhone,
      'timezone': instance.timezone,
    };
