import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toni/core/base/util/app_colors.dart';

class AppTextStyles {
  // medium 500 regular 400 bold 700

// Global Text Styles
  static final TextStyle mainButtonStyle = GoogleFonts.poppins(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final TextStyle textFieldHintTextStyle = GoogleFonts.poppins(
    color: AppColors.gray11x,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static final TextStyle appBarTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final TextStyle dialogTextStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static final TextStyle textFieldTextStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  // Profile Card

  static final TextStyle profileCardTitle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontSize: 20,
  );

  static final TextStyle profileCardSubTitle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 13,
  );

  // Post Card

  static final TextStyle postCardTitle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  static final TextStyle postCardSubTitle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static final TextStyle postCardCount = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  // Post Share

  static final TextStyle postShareButton = GoogleFonts.poppins(
    color: AppColors.purple,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
  // Notification View

  static final TextStyle notificationsTitle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontSize: 24,
  );

// Login View

  static final TextStyle loginTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 24,
  );

  static final TextStyle loginDescriptionStyle = GoogleFonts.poppins(
    color: AppColors.spanishGray,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static final TextStyle loginButtonStyle = GoogleFonts.poppins(
    color: AppColors.purple,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

// Register View

  static final TextStyle registerTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );

  static final TextStyle registerHaveAccountStyle = GoogleFonts.poppins(
    color: AppColors.spanishGray,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

// Profile View

  static final TextStyle profileUsernameStyle = GoogleFonts.poppins(
    color: AppColors.spanishGray,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  static final TextStyle profileNameStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 24,
  );

  static final TextStyle profileTileStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 18,
  );
}
