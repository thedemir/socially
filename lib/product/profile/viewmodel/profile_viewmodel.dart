import 'package:flutter/material.dart';
import 'package:toni/core/modules/memory/cache_maneger.dart';

import '../../../core/constants/navigation/navigation_constants.dart';
import '../../../core/navigation/navigation_service.dart';

class ProfileViewModel {
  static List<ProfileTileModel> tileModels = [
    ProfileTileModel(
      icon: Icons.edit_rounded,
      title: "Profil Düzenle",
      onTap: () {
        NavigationService.instance
            .navigateToPage(path: NavigationConstants.NOTIFICATIONS_VIEW);
      },
    ),
    ProfileTileModel(
      icon: Icons.settings_rounded,
      title: "Ayarlar",
      onTap: () {
        NavigationService.instance
            .navigateToPageClear(path: NavigationConstants.NOTIFICATIONS_VIEW);
      },
    ),
    ProfileTileModel(
      icon: Icons.exit_to_app_rounded,
      title: "Çıkış Yap",
      onTap: () {
        CacheManeger.deleteString("token");
        NavigationService.instance
            .navigateToPageClear(path: NavigationConstants.LOGIN_VIEW);
      },
    ),
  ];
}

class ProfileItems {}

class ProfileTileModel {
  String title;
  IconData icon;
  void Function()? onTap;

  ProfileTileModel({required this.title, required this.icon, this.onTap});
}
