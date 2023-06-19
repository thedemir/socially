import 'package:flutter/material.dart';

import '../../base/util/app_colors.dart';
import '../../base/util/app_text_styles.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: size.height * 0.07,
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.purple,
        ),
        child: Center(
            child: Text(
          text,
          style: AppTextStyles.mainButtonStyle,
        )),
      ),
    );
  }
}
