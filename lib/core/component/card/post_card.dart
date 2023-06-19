import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toni/core/base/util/app_text_styles.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Container(
          height: size.height * 0.35,
          padding: EdgeInsets.symmetric(horizontal: 8),
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
                          "https://pbs.twimg.com/profile_images/1650570383345475585/Bf5FZ6FM_400x400.jpg",
                          width: size.width * 0.12,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nurullah Demir",
                            style: AppTextStyles.postCardTitle,
                          ),
                          Text(
                            "@thedemir",
                            style: AppTextStyles.postCardSubTitle,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 4,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        "https://picsum.photos/600/300",
                        fit: BoxFit.fitHeight,
                      ))),
              Expanded(
                  child: Row(
                children: [
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: const Icon(Icons.favorite, color: Colors.grey),
                    onPressed: () {},
                  ),
                  Text(
                    "1.2k",
                    style: AppTextStyles.postCardCount,
                  ),
                ],
              )),
            ],
          ),
        ));
  }
}
