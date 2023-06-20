import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toni/core/base/util/app_colors.dart';
import 'package:toni/core/base/util/app_text_styles.dart';
import 'package:toni/product/profile/viewmodel/profile_viewmodel.dart';
import 'package:toni/providers/user.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Consumer<UserProvider>(
      builder: (context, userState, child) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: size.height * 0.1),
                SizedBox(
                  width: size.width * 0.3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(300),
                    child: Image.network(
                      userState.profileData.profilePhotoUrl,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Text(
                    userState.profileData.name,
                    style: AppTextStyles.profileNameStyle,
                  ),
                ),
                Text(
                  "@${userState.profileData.userName}",
                  style: AppTextStyles.profileUsernameStyle,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: ProfileViewModel.tileModels.length,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) {
                      return AppListtile(
                        icon: ProfileViewModel.tileModels[index].icon,
                        title: ProfileViewModel.tileModels[index].title,
                        onTap: ProfileViewModel.tileModels[index].onTap,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class AppListtile extends StatelessWidget {
  const AppListtile(
      {super.key, required this.icon, required this.title, this.onTap});
  final IconData icon;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(children: [
        ListTile(
          leading: Icon(icon, color: AppColors.purple),
          title: Text(
            title,
            style: AppTextStyles.profileTileStyle,
          ),
          onTap: onTap,
        ),
        Divider()
      ]),
    );
    ;
  }
}
