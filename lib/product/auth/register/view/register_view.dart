import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toni/core/component/button/main_button.dart';
import 'package:toni/core/component/text_field/app_text_field.dart';
import '../../../../core/base/util/app_text_styles.dart';
import '../../../../core/component/dialog/app_dialog.dart';
import '../../../../core/constants/navigation/navigation_constants.dart';
import '../../../../core/navigation/navigation_service.dart';
import '../../../../providers/auth.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            const Spacer(
              flex: 10,
            ),
            Image.asset("assets/logo.png"),
            const Spacer(flex: 8),
            Align(
                alignment: Alignment.centerLeft,
                child: Text("Kayıt Ol", style: AppTextStyles.loginTitleStyle)),
            const SizedBox(height: 20),
            AppTextField(
                controller: fullNameController,
                hintText: "Ad Soyad",
                icon: Icons.person),
            const Spacer(),
            AppTextField(
                controller: userNameController,
                hintText: "Kullanıcı Adı",
                icon: Icons.supervised_user_circle_sharp),
            const Spacer(),
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
            AppTextField(
              controller: passwordConfirmationController,
              hintText: "Parola Tekrar",
              icon: Icons.key,
              ispassword: true,
            ),
            const Spacer(flex: 5),
            MainButton(
                text: "Kayıt Ol",
                onTap: () async {
                  if (fullNameController.text.isEmpty ||
                      userNameController.text.isEmpty ||
                      emailController.text.isEmpty ||
                      passwordController.text.isEmpty ||
                      passwordConfirmationController.text.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) => CustomDialog(
                          text: "Boş alanları doldurunuz1",
                          buttonText: "Tamam",
                          buttonSwitch: 2),
                    );
                  } else {
                    await Provider.of<AuthProvider>(context, listen: false)
                        .register(
                      fullName: fullNameController.text,
                      userName: userNameController.text,
                      email: emailController.text,
                      password: passwordController.text,
                      passwordConfirmation: passwordConfirmationController.text,
                    )
                        .then((response) {
                      Navigator.pop(context);

                      if (response["success"] == true) {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) {
                            return CustomDialog(
                              buttonText: "Giriş Yap",
                              buttonSwitch: 1,
                              text: response["message"],
                              ontap: () {
                                NavigationService.instance.navigateToPageClear(
                                    path: NavigationConstants.LOGIN_VIEW);
                              },
                            );
                          },
                        );
                      } else {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) {
                            return CustomDialog(
                              buttonText: "Tamam",
                              buttonSwitch: 2,
                              text: response["message"],
                            );
                          },
                        );
                      }
                    });
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
