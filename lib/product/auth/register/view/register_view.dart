import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:toni/core/component/button/main_button.dart';
import 'package:toni/core/component/text_field/app_text_field.dart';
import '../../../../core/base/util/app_text_styles.dart';
import '../../login/viewmodel/login_viewmodel.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
                controller: TextEditingController(),
                hintText: "E-posta",
                icon: Icons.email),
            const Spacer(),
            AppTextField(
                controller: TextEditingController(),
                hintText: "Parola",
                icon: Icons.key),
            const Spacer(flex: 5),
            MainButton(text: "Kayıt Ol", onTap: () {}),
            const Spacer(flex: 15),
          ],
        ),
      ),
    );
  }
}
