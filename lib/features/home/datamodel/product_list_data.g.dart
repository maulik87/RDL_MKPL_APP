// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductListData _$ProductListDataFromJson(Map<String, dynamic> json) =>
    ProductListData(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ProductListDataToJson(ProductListData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      categoryId: json['category_id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      year: json['year'],
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : ProductUser.fromJson(json['user'] as Map<String, dynamic>),
      isActive: json['is_active'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    )
      ..price = (json['price'] as num?)?.toDouble()
      ..medias = (json['medias'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'category_id': instance.categoryId,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'year': instance.year,
      'category': instance.category,
      'user': instance.user,
      'is_active': instance.isActive,
      'createdAt': instance.createdAt?.toIso8601String(),
      'medias': instance.medias,
    };

ProductUser _$ProductUserFromJson(Map<String, dynamic> json) => ProductUser(
      id: json['id'] as int?,
      parentId: json['parent_id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      salesTaxRate: (json['sales_tax_rate'] as num?)?.toDouble(),
      invoiceStartFrom: json['invoice_start_from'] as int?,
      onlineUsersCount: json['online_users_count'] as int?,
      isNewUser: json['is_new_user'],
      paymentMethod: json['payment_method'],
      isSubscribed: json['is_subscribed'],
      isOnGracePeriod: json['is_on_grace_period'],
      hasFailedPayment: json['has_failed_payment'],
      failedPaymentReason: json['failed_payment_reason'],
      pendingMonthsAmount: json['pending_months_amount'],
      gracePeriodDays: json['grace_period_days'],
      pendingCarHistoryPayment: json['pending_car_history_payment'],
    );

Map<String, dynamic> _$ProductUserToJson(ProductUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'name': instance.name,
      'email': instance.email,
      'sales_tax_rate': instance.salesTaxRate,
      'invoice_start_from': instance.invoiceStartFrom,
      'online_users_count': instance.onlineUsersCount,
      'is_new_user': instance.isNewUser,
      'payment_method': instance.paymentMethod,
      'is_subscribed': instance.isSubscribed,
      'is_on_grace_period': instance.isOnGracePeriod,
      'has_failed_payment': instance.hasFailedPayment,
      'failed_payment_reason': instance.failedPaymentReason,
      'pending_months_amount': instance.pendingMonthsAmount,
      'grace_period_days': instance.gracePeriodDays,
      'pending_car_history_payment': instance.pendingCarHistoryPayment,
    };

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      id: json['id'] as String?,
      name: json['name'] as String?,
      url: json['url'] as String?,
      tag: json['tag'] as String?,
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'tag': instance.tag,
    };
