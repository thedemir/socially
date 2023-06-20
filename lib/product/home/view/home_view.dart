import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toni/core/component/space/top_space.dart';
import 'package:toni/providers/social.dart';
import '../../../core/component/card/post_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SocialProvider>(
      builder: (context, socialState, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              const TopSpace(),
              Expanded(
                child: Row(
                  children: [
                    Image.asset(
                      "assets/logo.png",
                      width: 32,
                    ),
                    const Spacer(),
                    CupertinoButton(
                      child: Icon(Icons.settings_rounded, color: Colors.grey),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 10,
                child: ListView.builder(
                  itemCount: socialState.postsData?.length ?? 0,
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    return PostCard(
                      postData: socialState.postsData![index],
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
