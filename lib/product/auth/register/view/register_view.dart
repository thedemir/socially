import 'package:flutter/material.dart';
import 'package:toni/core/component/button/main_button.dart';
import 'package:toni/core/component/text_field/app_text_field.dart';
import 'package:toni/product/auth/register/viewmodel/register_viewmodel.dart';
import '../../../../core/base/util/app_text_styles.dart';
import '../../../../core/component/dialog/app_dialog.dart';
import '../../../../core/constants/navigation/navigation_constants.dart';
import '../../../../core/navigation/navigation_service.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  TextEditingController fullNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            const Spacer(
              flex: 10,
            ),
            Image.asset(RegisterItems.iconPath),
            const Spacer(flex: 8),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(RegisterItems.title,
                    style: AppTextStyles.loginTitleStyle)),
            const SizedBox(height: 20),
            AppTextField(
                controller: fullNameController,
                hintText: RegisterItems.title,
                icon: RegisterItems.personIcon),
            const Spacer(),
            AppTextField(
                controller: userNameController,
                hintText: RegisterItems.hintTextuserName,
                icon: RegisterItems.userNameIcon),
            const Spacer(),
            AppTextField(
                controller: emailController,
                hintText: RegisterItems.hintTextEmail,
                icon: RegisterItems.mailIcon),
            const Spacer(),
            AppTextField(
              controller: passwordController,
              hintText: RegisterItems.hintTextPassword,
              icon: RegisterItems.keyIcon,
              ispassword: true,
            ),
            const Spacer(),
            AppTextField(
              controller: passwordConfirmationController,
              hintText: RegisterItems.hintTextPasswordAgain,
              icon: RegisterItems.keyIcon,
              ispassword: true,
            ),
            const Spacer(flex: 5),
            MainButton(
                text: RegisterItems.buttonText,
                onTap: () async {
                  if (fullNameController.text.isEmpty ||
                      userNameController.text.isEmpty ||
                      emailController.text.isEmpty ||
                      passwordController.text.isEmpty ||
                      passwordConfirmationController.text.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) => const CustomDialog(
                          text: "Boş alanları doldurunuz1", buttonSwitch: 2),
                    );
                  } else {
                    NavigationService.instance.navigateToPageClear(
                        path: NavigationConstants.LOGIN_VIEW);
                  }
                }),
            const Spacer(flex: 15),
          ],
        ),
      ),
    );
  }
}
