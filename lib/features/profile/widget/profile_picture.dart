import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/core/constants/widget_ids.dart';
import 'package:rdl_market_place_app/features/profile/controllers/profile_controller.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      id: WidgetIds.profilePictureViewId,
      assignId: true,
      builder: (logic) {
        return InkWell(
          onTap: (){
            logic.showPicker(context);
          },
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              SizedBox(
                height: AppSizes.height_80,
                width: AppSizes.height_80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppSizes.height_100),
                  child: (logic.imageFile != null)
                      ? Image.file(
                    logic.imageFile!,
                    fit: BoxFit.cover,
                  )
                      /*: ((currentUserData != null &&
                      currentUserData.getUserImg() != null &&
                      currentUserData.getUserImg()!.isNotEmpty)
                      ? CachedNetworkImage(
                    imageUrl: currentUserData.getUserImg()!,
                    httpHeaders: {
                      'Cookie': 'PHPSESSID=${Preference.shared.getString(
                          Preference.PHPSESSID)}'
                    },
                    fadeInDuration: Duration.zero,
                    fadeOutDuration: Duration.zero,
                    placeholder: (context, url) =>
                        Image.asset(
                          'assets/images/ic_user_default.webp',
                          fit: BoxFit.cover,
                        ),
                    placeholderFadeInDuration: Duration.zero,
                    imageBuilder: (context, imageProvider) =>
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                    errorWidget: (context, url, error) =>
                        Image.asset(
                          'assets/images/ic_user_default.webp',
                          fit: BoxFit.cover,
                        ),
                  )*/
                      : Image.asset(
                    'assets/images/img_user_placeholder.webp',
                    fit: BoxFit.cover,
                  )),
                ),
              Container(
                margin: EdgeInsets.only(top: AppSizes.height_10, left: AppSizes.height_10),
                child: const Icon(Icons.edit,size: 25,),
              ),
            ],
          ),
        );
      },
    );
  }
}
