import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toni/core/component/button/main_button.dart';
import 'package:toni/core/component/text_field/app_text_field.dart';
import 'package:toni/core/constants/navigation/navigation_constants.dart';

import '../../../../core/base/util/app_text_styles.dart';
import '../../../../core/component/dialog/app_dialog.dart';
import '../../../../core/navigation/navigation_service.dart';
import '../../../../providers/auth.dart';
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
            Image.asset("assets/logo.png"),
            const Spacer(flex: 5),
            Align(
                alignment: Alignment.centerLeft,
                child: Text("Giriş Yap", style: AppTextStyles.loginTitleStyle)),
            const SizedBox(height: 20),
            AppTextField(
                controller: emailController,
                hintText: "E-posta",
                icon: Icons.email),
            const Spacer(),
            AppTextField(
              controller: passwordController,
              hintText: "Parola",
              icon: Icons.key,
              ispassword: true,
            ),
            const Spacer(),
            CupertinoButton(
              child: Text(
                LoginItem.forgetPasswordButtonText,
                style: AppTextStyles.loginButtonStyle,
              ),
              onPressed: () {},
            ),
            const Spacer(flex: 2),
            MainButton(
                text: "Giriş Yap",
                onTap: () {
                  if (emailController.text.isEmpty ||
                      passwordController.text.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) => CustomDialog(
                          text: "Boş alanları doldurunuz1",
                          buttonText: "Tamam",
                          buttonSwitch: 2),
                    );
                  } else {
                    Provider.of<AuthProvider>(context, listen: false)
                        .login(
                            email: emailController.text,
                            password: passwordController.text)
                        .then((response) async {
                      if (response.success) {
                        Navigator.pop(context);
                        NavigationService.instance.navigateToPageClear(
                            path: NavigationConstants.MAIN_PAGE_VIEW);
                      } else {
                        Navigator.pop(context);

                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) {
                            return CustomDialog(
                              buttonText: "Tamam",
                              buttonSwitch: 2,
                              text: response.message,
                            );
                          },
                        );
                      }
                    });
                  }
                  NavigationService.instance
                      .navigateToPage(path: NavigationConstants.MAIN_PAGE_VIEW);
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
