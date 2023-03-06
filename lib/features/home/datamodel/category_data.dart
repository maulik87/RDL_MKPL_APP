import 'package:json_annotation/json_annotation.dart';

part 'category_data.g.dart';

@JsonSerializable()
class CategoryData {
  CategoryData({
    this.data,
    this.status,
    this.message,
  });

  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryDataToJson(this);

  List<Category>? data;
  final bool? status;
  final String? message;
}

@JsonSerializable()
class Category {
  Category({
    this.id,
    this.parentId,
    this.name,
    this.children,
    this.isActive,
  });

  int? id;
  int? parentId;
  String? name;
  List<Category>? children;
  int? isActive;
  @JsonKey(name:'image_path')
  String? imagePath;

  @JsonKey(includeFromJson: false,includeToJson: false)
  bool isExpanded = false;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);

}