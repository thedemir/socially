import 'package:flutter/material.dart';
import '../../base/util/app_text_styles.dart';
import '../button/main_back_button.dart';

class MainAppBar extends StatelessWidget {
  MainAppBar({super.key, this.title, this.isBackButtonVisible = true});
  final bool isBackButtonVisible;
  String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      leading: isBackButtonVisible ? const MainBackButton() : null,
      title: title != null
          ? Text(
              title!,
              style: AppTextStyles.appBarTitleStyle,
            )
          : null,
    );
  }
}
