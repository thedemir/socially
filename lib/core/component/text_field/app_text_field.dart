import 'package:flutter/material.dart';

import '../../base/util/app_colors.dart';
import '../../base/util/app_text_styles.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.keyboardType,
      this.ispassword = false,
      this.icon});

  final TextEditingController controller;
  final IconData? icon;
  final String hintText;
  final TextInputType? keyboardType;
  final bool ispassword;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.08,
      child: TextFormField(
        controller: controller,
        style: AppTextStyles.textFieldTextStyle,
        autofocus: false,
        obscureText: ispassword,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          fillColor: AppColors.cultured,
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
      ),
    );
  }
}
