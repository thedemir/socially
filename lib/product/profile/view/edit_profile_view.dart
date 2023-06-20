import 'package:flutter/material.dart';
import 'package:toni/core/component/appbar/main_app_bar.dart';
import 'package:toni/core/component/button/main_button.dart';
import 'package:toni/core/component/dialog/app_dialog.dart';
import 'package:toni/core/component/space/top_space.dart';
import 'package:toni/core/component/text_field/app_text_field.dart';
import 'package:toni/product/profile/viewmodel/edit_profile_viewmodel.dart';

import '../../../core/component/space/bottom_space.dart';

class EditProfileView extends StatelessWidget {
  EditProfileView({super.key});

  TextEditingController fullNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: MainAppBar(
            title: EditProfileItems.title,
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            const TopSpace(),
            AppTextField(
              controller: fullNameController,
              hintText: EditProfileItems.hintTextName,
              icon: EditProfileItems.personIcon,
            ),
            AppTextField(
              controller: userNameController,
              hintText: EditProfileItems.hintTextuserName,
              icon: EditProfileItems.userNameIcon,
            ),
            AppTextField(
              controller: emailController,
              hintText: EditProfileItems.hintTextEmail,
              icon: EditProfileItems.mailIcon,
            ),
            const Spacer(),
            MainButton(
                text: "Kaydet",
                onTap: () {
                  if (fullNameController.text.isEmpty ||
                      userNameController.text.isEmpty ||
                      emailController.text.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) => CustomDialog(
                        text: "Boş Alanları Doldurunuz.",
                        buttonSwitch: 2,
                        ontap: () {
                          Navigator.pop(context);
                        },
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => CustomDialog(
                          text: "Profil Güncellendi.",
                          buttonSwitch: 1,
                          ontap: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                          }),
                    );
                  }
                }),
            const BottomSpace(),
          ],
        ),
      ),
    );
  }
}
