import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toni/product/search/model/user_model.dart';
import '../../base/util/app_colors.dart';
import '../../base/util/app_text_styles.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard({
    super.key,
    required this.userData,
    this.followOnPressed,
  });
  final UserModel userData;
  void Function()? followOnPressed;

  String shortName(String fullName) {
    List<String> parts = fullName.split(" ");
    if (parts.length > 1) {
      String kisaltma = parts[0] + " " + parts[1].substring(0, 1);
      return kisaltma;
    } else {
      return fullName;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(userData.profilePhotoUrl))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shortName(userData.name),
                    style: AppTextStyles.profileCardTitle,
                  ),
                  Text("${userData.followerCount} Takipçi",
                      style: AppTextStyles.profileCardSubTitle),
                ],
              ),
              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: followOnPressed,
                child: Icon(
                  userData.isFollowed ? Icons.check : Icons.add,
                  color: AppColors.purple,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
