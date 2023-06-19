import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toni/core/base/util/app_colors.dart';
import 'package:toni/core/component/card/profile_card.dart';
import 'package:toni/core/component/space/top_space.dart';
import 'package:toni/core/component/text_field/app_text_field.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
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
    var size = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            const TopSpace(),
            Expanded(
                child: Column(
              children: [
                Expanded(child: Image.asset("assets/logo.png")),
                const SizedBox(height: 16),
                Expanded(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 7,
                      child: AppTextField(
                        controller: TextEditingController(),
                        hintText: "Ara",
                        icon: Icons.search_rounded,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: CupertinoButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.purple,
                                borderRadius: BorderRadius.circular(9)),
                            padding: const EdgeInsets.all(8),
                            child: SvgPicture.asset(
                              "assets/icon/filter.svg",
                              width: 24,
                              height: 24,
                            ),
                          )),
                    )
                  ],
                ))
              ],
            )),
            const SizedBox(height: 16),
            Expanded(
                flex: 5,
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8),
                  itemBuilder: (context, index) {
                    return ProfileCard(
                      image:
                          "https://pbs.twimg.com/profile_images/1650570383345475585/Bf5FZ6FM_400x400.jpg",
                      name: shortName("Nurullah Demir"),
                      followerCount: 80,
                      onPressed: () {},
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
