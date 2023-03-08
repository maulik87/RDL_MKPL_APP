// ignore_for_file: unused_field

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rdl_market_place_app/core/config/utils.dart';
import 'package:rdl_market_place_app/core/constants/widget_ids.dart';
import 'package:rdl_market_place_app/core/services/dio_client.dart';
import 'package:rdl_market_place_app/features/home/datamodel/profile_data.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';

class ProfileController extends GetxController {
  ProfileController(this._client);

  final IApiClient _client;

  late UserProfile? userProfile;
  File? imageFile;

  @override
  void onInit() {
    userProfile = Utils.getUserProfile();
    super.onInit();
  }

  void showPicker(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: Text(Platform.isIOS
                    ? EnumLocal.txtPickFromPhotos.name.tr
                    : EnumLocal.txtPickFromGallery.name.tr),
                onTap: () async {
                  _imageFromGallery();
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: Text(EnumLocal.txtPickFromCamera.name.tr),
                onTap: () async {
                  Navigator.of(context).pop();
                  _imageFromCamera();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  _imageFromCamera() async {
    XFile? imageCamera = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 80);
    openImageCropper(imageCamera);
  }

  _imageFromGallery() async {
    XFile? imageGallery = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 80);
    openImageCropper(imageGallery);

    /*setState(() {
      if (imageGallery != null &&
          imageGallery.path.isNotEmpty) _imageFile = File(imageGallery.path);
      updateUserProfilePicModel.profile = _imageFile;
      isUpdateRequired = true;
      Debug.printLog("_imageFile =====> " + _imageFile.toString());
      */ /*Debug.printLog("editProfileImageDataModel.profileImage =====> " +
          editProfileImageDataModel.profileImage.toString());*/ /*
    });*/

    //_getEditProfileImage();
  }

  openImageCropper(XFile? file) async {
    if (file != null && file.path.isNotEmpty) {
      CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: file.path,
        cropStyle: CropStyle.circle,
        aspectRatio: const CropAspectRatio(ratioX: 20, ratioY: 20),
        compressQuality: 60,
        maxHeight: 100,
        maxWidth: 100,
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: 'Cropper',
              showCropGrid: false,
              initAspectRatio: CropAspectRatioPreset.ratio4x3,
              lockAspectRatio: false),
          IOSUiSettings(
            title: 'Cropper',
          )
        ],
      );
      if (croppedFile != null && croppedFile.path.isNotEmpty) {
        imageFile = File(croppedFile.path);
        update([WidgetIds.profilePictureViewId]);
      }
      /*Debug.printLog("editProfileImageDataModel.profileImage =====> " +
          editProfileImageDataModel.profileImage.toString());*/
    }
  }
}
