import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toni/core/base/util/app_colors.dart';
import 'package:toni/core/base/util/app_text_styles.dart';
import 'package:toni/product/home/model/post_model.dart';

import '../../../product/search/model/user_model.dart';

class PostCard extends StatelessWidget {
  PostCard({super.key, required this.postData});
  final PostModel postData;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Container(
          height: size.height * 0.35,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                          postData.user.profilePhotoUrl,
                          width: size.width * 0.12,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            postData.user.name,
                            style: AppTextStyles.postCardTitle,
                          ),
                          Text(
                            "@${postData.user.userName}",
                            style: AppTextStyles.postCardSubTitle,
                          ),
                        ],
                      ),
                      Spacer(),
                      CupertinoButton(
                          onPressed: () {},
                          padding: EdgeInsets.zero,
                          child: Icon(Icons.more_vert, color: AppColors.purple))
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 4,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        postData.postPhotoUrl,
                        fit: BoxFit.fitHeight,
                      ))),
              Expanded(
                  child: Row(
                children: [
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: Icon(Icons.favorite,
                        color: postData.isLiked ? Colors.red : Colors.grey),
                    onPressed: () {},
                  ),
                  Text(
                    "${postData.likeCount}",
                    style: AppTextStyles.postCardCount,
                  ),
                ],
              )),
            ],
          ),
        ));
  }
}
