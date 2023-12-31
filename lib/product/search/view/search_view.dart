import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:toni/core/base/util/app_colors.dart';
import 'package:toni/core/component/card/profile_card.dart';
import 'package:toni/core/component/dialog/app_dialog.dart';
import 'package:toni/core/component/space/top_space.dart';
import 'package:toni/product/search/viewmodel/search_viewmodel.dart';
import 'package:toni/providers/social.dart';
import '../../../core/base/util/app_text_styles.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Consumer<SocialProvider>(
      builder: (context, socialState, child) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: Column(
              children: [
                const TopSpace(),
                _SearchBar(),
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
                          userData: socialState.usersData![index],
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

class _SearchBar extends StatelessWidget {
  const _SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Expanded(child: Image.asset(SearchItems.iconPath)),
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
                hintText: SearchItems.hintText,
                onChanged: (value) {
                  Provider.of<SocialProvider>(context).getUserData();
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
                      SearchItems.iconFilterPath,
                      width: 24,
                      height: 24,
                    ),
                  )),
            )
          ],
        ))
      ],
    ));
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
          prefixIcon: const Icon(Icons.search_rounded, color: AppColors.purple),
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
