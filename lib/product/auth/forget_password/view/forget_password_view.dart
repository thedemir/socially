import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toni/core/component/appbar/main_app_bar.dart';
import 'package:toni/core/component/button/main_button.dart';
import 'package:toni/core/component/space/bottom_space.dart';
import 'package:toni/core/component/space/top_space.dart';
import 'package:toni/core/component/text_field/app_text_field.dart';
import 'package:toni/core/constants/navigation/navigation_constants.dart';

import '../../../../core/base/util/app_text_styles.dart';
import '../../../../core/component/dialog/app_dialog.dart';
import '../../../../core/navigation/navigation_service.dart';
import '../../../../providers/auth.dart';

class ForgetPasswordView extends StatelessWidget {
  ForgetPasswordView({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: MainAppBar(
          title: "",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            TopSpace(),
            Image.asset("assets/logo.png"),
            const Spacer(flex: 20),
            Align(
                alignment: Alignment.centerLeft,
                child: Text("Parolamı Unuttum",
                    style: AppTextStyles.loginTitleStyle)),
            const SizedBox(height: 20),
            AppTextField(
                controller: emailController,
                hintText: "E-posta",
                icon: Icons.email),
            const Spacer(flex: 50),
            MainButton(text: "Gönder", onTap: () {}),
            BottomSpace()
          ],
        ),
      ),
    );
  }
}
