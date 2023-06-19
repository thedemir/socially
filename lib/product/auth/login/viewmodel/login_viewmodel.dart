import 'package:flutter/material.dart';

class LoginViewModel {}

class LoginItem {
  static String imagePath = "assets/images/auth/login_header_image.png";
  static String title = "Hoş geldiniz!";
  static String description =
      "Kullanıcı bilgileriniz ile sisteme giriş yapabilirsiniz.";
  static const IconData emailIcon = Icons.email_outlined;
  static const String hintTextEmail = 'E-posta Adresiniz';
  static const IconData passwordIcon = Icons.lock_outline;
  static const String hintTextPassword = 'Parolanız';
  static const String forgetPasswordButtonText = "Parolamı Unuttum";
  static const String buttonText = "Giriş Yap";
  static const String haveAccountText = "Üyeliğiniz yok mu?";
  static const String registerButtonText = "Kayıt Ol";
}
