import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:toni/core/base/util/app_colors.dart';
import 'package:toni/core/component/card/profile_card.dart';
import 'package:toni/core/component/space/top_space.dart';
import 'package:toni/providers/social.dart';
import '../../../core/base/util/app_text_styles.dart';

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
    return Consumer<SocialProvider>(
      builder: (context, socialState, child) {
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
                          child: SearchTextField(
                            controller: TextEditingController(),
                            hintText: "Ara",
                            onChanged: (value) {
                              socialState.getUserData();
                            },
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
                      itemCount: socialState.usersData?.length ?? 0,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.8,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8),
                      itemBuilder: (context, index) {
                        return ProfileCard(
                          image: socialState.usersData![index].profilePhotoUrl,
                          name: shortName(socialState.usersData![index].name),
                          followerCount:
                              socialState.usersData![index].followerCount,
                          isFollowed: socialState.usersData![index].isFollowed,
                          isOnline: socialState.usersData![index].isOnline,
                          followOnPressed: () {
                            socialState
                                .followUser(socialState.usersData![index].id);
                          },
                        );
                      },
                    ))
              ],
            ),
          ),
        );
      },
    );
  }
}

class SearchTextField extends StatelessWidget {
  SearchTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.onChanged});

  final TextEditingController controller;
  final String hintText;
  void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.08,
      child: TextFormField(
        controller: controller,
        style: AppTextStyles.textFieldTextStyle,
        autofocus: false,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search_rounded, color: AppColors.purple),
          prefixIconColor: AppColors.purple,
          hintText: hintText,
          hintStyle: AppTextStyles.textFieldHintTextStyle,
          filled: true,
          contentPadding: const EdgeInsets.all(17),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
