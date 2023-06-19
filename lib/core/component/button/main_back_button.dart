import 'package:flutter/cupertino.dart';

class MainBackButton extends StatelessWidget {
  const MainBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      child: Icon(
        CupertinoIcons.back,
        color: CupertinoColors.black,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
