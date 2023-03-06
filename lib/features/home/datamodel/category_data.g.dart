// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryData _$CategoryDataFromJson(Map<String, dynamic> json) => CategoryData(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CategoryDataToJson(CategoryData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['id'] as int?,
      parentId: json['parentId'] as int?,
      name: json['name'] as String?,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      isActive: json['isActive'] as int?,
    )..imagePath = json['image_path'] as String?;

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'name': instance.name,
      'children': instance.children,
      'isActive': instance.isActive,
      'image_path': instance.imagePath,
    };
