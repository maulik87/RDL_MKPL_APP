import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:rdl_market_place_app/features/home/datamodel/category_data.dart';

part 'product_list_data.g.dart';

@JsonSerializable()
class ProductListData {
  ProductListData({
    this.data,
    this.status,
    this.message,
  });

  factory ProductListData.fromJson(Map<String, dynamic> json) =>
      _$ProductListDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProductListDataToJson(this);

  List<Product>? data;
  final bool? status;
  final String? message;
}

@JsonSerializable()
class Product {
  Product({
    this.id,
    this.userId,
    this.categoryId,
    this.name,
    this.description,
    this.year,
    this.category,
    this.user,
    this.isActive,
    this.createdAt,
  });

  int? id;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'category_id')
  int? categoryId;
  String? name;
  String? description;
  double? price;
  dynamic year;
  Category? category;
  ProductUser? user;
  @JsonKey(name: 'is_active')
  int? isActive;
  DateTime? createdAt;
  List<Media>? medias;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

@JsonSerializable()
class ProductUser {
  ProductUser({
    this.id,
    this.parentId,
    this.name,
    this.email,
    this.salesTaxRate,
    this.invoiceStartFrom,
    this.onlineUsersCount,
    this.isNewUser,
    this.paymentMethod,
    this.isSubscribed,
    this.isOnGracePeriod,
    this.hasFailedPayment,
    this.failedPaymentReason,
    this.pendingMonthsAmount,
    this.gracePeriodDays,
    this.pendingCarHistoryPayment,
  });

  int? id;
  @JsonKey(name: 'parent_id')
  int? parentId;
  String? name;
  String? email;
  @JsonKey(name: 'sales_tax_rate')
  double? salesTaxRate;
  @JsonKey(name: 'invoice_start_from')
  int? invoiceStartFrom;
  @JsonKey(name: 'online_users_count')
  int? onlineUsersCount;
  @JsonKey(name: 'is_new_user')
  dynamic isNewUser;
  @JsonKey(name: 'payment_method')
  dynamic paymentMethod;
  @JsonKey(name: 'is_subscribed')
  dynamic isSubscribed;
  @JsonKey(name: 'is_on_grace_period')
  dynamic isOnGracePeriod;
  @JsonKey(name: 'has_failed_payment')
  dynamic hasFailedPayment;
  @JsonKey(name: 'failed_payment_reason')
  dynamic failedPaymentReason;
  @JsonKey(name: 'pending_months_amount')
  dynamic pendingMonthsAmount;
  @JsonKey(name: 'grace_period_days')
  dynamic gracePeriodDays;
  @JsonKey(name: 'pending_car_history_payment')
  dynamic pendingCarHistoryPayment;

  factory ProductUser.fromJson(Map<String, dynamic> json) =>
      _$ProductUserFromJson(json);

  Map<String, dynamic> toJson() => _$ProductUserToJson(this);
}

@JsonSerializable()
class Media {
  Media({
    this.id,
    this.name,
    this.url,
    this.tag,
  });

  String? id;
  String? name;
  String? url;
  String? tag;


  factory Media.fromJson(Map<String, dynamic> json) =>
      _$MediaFromJson(json);

  Map<String, dynamic> toJson() => _$MediaToJson(this);

}