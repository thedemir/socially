import 'package:flutter/cupertino.dart';
import 'package:toni/core/base/util/app_colors.dart';

class MainBackButton extends StatelessWidget {
  const MainBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      child: Icon(
        CupertinoIcons.back,
        color: AppColors.purple,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
