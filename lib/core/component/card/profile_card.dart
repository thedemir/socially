import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../base/util/app_colors.dart';
import '../../base/util/app_text_styles.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard(
      {super.key,
      required this.name,
      required this.followerCount,
      required this.image,
      this.followOnPressed,
      required this.isOnline,
      required this.isFollowed});
  final String name;
  final int followerCount;
  final bool isOnline;
  final bool isFollowed;
  final String image;
  void Function()? followOnPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(image))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppTextStyles.profileCardTitle,
                  ),
                  Text("$followerCount Takipçi",
                      style: AppTextStyles.profileCardSubTitle),
                ],
              ),
              CupertinoButton(
                padding: EdgeInsets.zero,
                child: Icon(
                  isFollowed ? Icons.check : Icons.add,
                  color: AppColors.purple,
                ),
                onPressed: followOnPressed,
              )
            ],
          ),
        ],
      ),
    );
  }
}
