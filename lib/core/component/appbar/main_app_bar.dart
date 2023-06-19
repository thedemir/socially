import 'package:flutter/material.dart';
import '../../base/util/app_text_styles.dart';
import '../button/main_back_button.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar(
      {super.key, required this.title, this.isBackButtonVisible = true});
  final bool isBackButtonVisible;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      leading: isBackButtonVisible ? const MainBackButton() : null,
      title: Text(
        title,
        style: AppTextStyles.appBarTitleStyle,
      ),
    );
  }
}
