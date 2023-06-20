import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toni/core/component/button/main_button.dart';
import 'package:toni/core/component/dialog/circular_progress.dart';
import 'package:toni/core/component/text_field/app_text_field.dart';
import 'package:toni/core/constants/navigation/navigation_constants.dart';
import 'package:toni/providers/user.dart';
import '../../../../core/base/util/app_text_styles.dart';
import '../../../../core/component/dialog/app_dialog.dart';
import '../../../../core/navigation/navigation_service.dart';
import '../viewmodel/login_viewmodel.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Spacer(
              flex: 10,
            ),
            Image.asset(LoginItem.iconPath),
            const Spacer(flex: 5),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(LoginItem.title,
                    style: AppTextStyles.loginTitleStyle)),
            const SizedBox(height: 20),
            AppTextField(
                controller: emailController,
                hintText: LoginItem.hintTextEmail,
                icon: LoginItem.emailIcon),
            const Spacer(),
            AppTextField(
              controller: passwordController,
              hintText: LoginItem.hintTextPassword,
              icon: LoginItem.passwordIcon,
              ispassword: true,
            ),
            const Spacer(),
            CupertinoButton(
              child: Text(
                LoginItem.forgetPasswordButtonText,
                style: AppTextStyles.loginButtonStyle,
              ),
              onPressed: () {
                NavigationService.instance.navigateToPage(
                    path: NavigationConstants.FORGET_PASSWORD_VIEW);
              },
            ),
            const Spacer(flex: 2),
            MainButton(
                text: LoginItem.buttonText,
                onTap: () async {
                  showDialog(
                    context: context,
                    builder: (context) => const AppCircularProgress(),
                  );
                  await Provider.of<UserProvider>(context, listen: false)
                      .getProfileDetail();
                  Navigator.pop(context);
                  if (emailController.text.isEmpty ||
                      passwordController.text.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) => CustomDialog(
                        text: "Boş alanları doldurunuz1",
                        buttonSwitch: 2,
                      ),
                    );
                  } else {
                    NavigationService.instance.navigateToPage(
                        path: NavigationConstants.MAIN_PAGE_VIEW);
                  }
                }),
            const Spacer(flex: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  LoginItem.haveAccountText,
                  style: AppTextStyles.loginDescriptionStyle,
                ),
                CupertinoButton(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    LoginItem.registerButtonText,
                    style: AppTextStyles.loginButtonStyle,
                  ),
                  onPressed: () {
                    NavigationService.instance.navigateToPage(
                        path: NavigationConstants.REGISTER_VIEW);
                  },
                ),
              ],
            ),
            const Spacer(flex: 10),
          ],
        ),
      ),
    );
  }
}
