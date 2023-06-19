import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../base/util/app_colors.dart';
import '../../base/util/app_text_styles.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog(
      {super.key,
      required this.text,
      required this.buttonText,
      this.ontap,
      required this.buttonSwitch});
  final String text;
  final String buttonText;
  final int buttonSwitch; // 1 = yes, 2 = no, 3 = ok
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Dialog(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)), //this right here
      child: Container(
        width: size.width,
        height: size.height * 0.23,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buttonSwitch == 1
                  ? const Icon(Icons.info_outline_rounded,
                      size: 50, color: Colors.green)
                  : buttonSwitch == 2
                      ? const Icon(Icons.info_outline_rounded,
                          size: 50, color: Colors.red)
                      : const Icon(Icons.info_outline_rounded,
                          size: 50, color: Colors.blue),
              Text(
                text,
                textAlign: TextAlign.center,
                style: AppTextStyles.dialogTextStyle,
              ),
              CupertinoButton(
                  onPressed: ontap ??
                      () {
                        Navigator.pop(context);
                      },
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: buttonSwitch == 1
                              ? Colors.green
                              : buttonSwitch == 2
                                  ? AppColors.ferrariColor
                                  : Colors.blue),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 10),
                        child: Text(
                          buttonText,
                          style: AppTextStyles.mainButtonStyle,
                        ),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
