import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/features/my_account/controllers/my_account_controller.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/widgets/app_text.dart';

class MyAccountUserProfile extends StatelessWidget {
  MyAccountUserProfile({Key? key}) : super(key: key);

  MyAccountController myAccountController = Get.find<MyAccountController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: AppSizes.width_10,),
          CachedNetworkImage(
            width: AppSizes.height_100,
            height: AppSizes.height_100,
            placeholder: (context, url) => ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/img_user_placeholder.webp',
                fit: BoxFit.cover,
              ),
            ),
            placeholderFadeInDuration: Duration.zero,
            imageUrl: 'assets/images/img_user_placeholder.webp',
            fadeInDuration: Duration.zero,
            fadeOutDuration: Duration.zero,
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            errorWidget: (context, url, error) => ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/img_user_placeholder.webp',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: AppSizes.width_10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: myAccountController.userProfile?.name??"RDL User",
                fontSize: AppFontSize.size_20,
                fontWeight: FontWeight.w700,
              ),
              InkWell(
                onTap: (){
                  myAccountController.openEditProfileScreen();
                },
                child: AppText(
                  text: EnumLocal.txtViewAndEditProfile.name.tr,
                  fontSize: AppFontSize.size_16,
                  fontWeight: FontWeight.w600,
                  txtDecoration: TextDecoration.underline,
                ),
              )
            ],
          ),
          SizedBox(width: AppSizes.width_10,),
        ],
      ),
    );
  }
}
