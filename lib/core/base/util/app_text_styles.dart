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

  static final TextStyle redTextButtonStyle = GoogleFonts.poppins(
    color: AppColors.ferrariColor,
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

// OnBoard View

  static final TextStyle onBoardButtonStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final TextStyle onBoardTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 32,
  );

  static final TextStyle onBoardDescriptionStyle = GoogleFonts.poppins(
    color: AppColors.spanishGray,
    fontWeight: FontWeight.w400,
    fontSize: 23,
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

// Forget Password View

  static final TextStyle forgetPasswordTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 24,
  );

  static final TextStyle forgetPasswordDescriptionStyle = GoogleFonts.poppins(
    color: AppColors.spanishGray,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

// Register View

  static final TextStyle registerTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );

  static final TextStyle registerDescriptionStyle = GoogleFonts.poppins(
    color: AppColors.spanishGray,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static final TextStyle registerSubTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final TextStyle registerCheckBoxStyle = GoogleFonts.poppins(
    color: AppColors.spanishGray,
    fontWeight: FontWeight.w400,
    fontSize: 11,
  );

  static final TextStyle registerCheckBoxLinkStyle = GoogleFonts.poppins(
    color: AppColors.ferrariColor,
    fontWeight: FontWeight.w500,
    fontSize: 11,
    decoration: TextDecoration.underline,
    decorationColor: AppColors.ferrariColor,
  );

  static final TextStyle registerButtonStyle = GoogleFonts.poppins(
    color: AppColors.ferrariColor,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final TextStyle registerHaveAccountStyle = GoogleFonts.poppins(
    color: AppColors.spanishGray,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

// Agreement View

  static final TextStyle agreementTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 24,
  );

  static final TextStyle agreementDescriptionStyle = GoogleFonts.poppins(
    color: AppColors.spanishGray,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static final TextStyle agreementButtonStyle = GoogleFonts.poppins(
    color: AppColors.ferrariColor,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

// Home View

  static final TextStyle homeViewCategoryButtonStyle = GoogleFonts.poppins(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );

  static final TextStyle campaignCardBrandStyle = GoogleFonts.poppins(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );

  static final TextStyle campaignCardTitleStyle = GoogleFonts.poppins(
    color: AppColors.antiFlashWhite,
    fontWeight: FontWeight.w700,
    fontSize: 24,
  );

  static final TextStyle homeViewProductsTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontSize: 14,
  );

  static final TextStyle productCardTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );

  static final TextStyle productCardPriceStyle = GoogleFonts.poppins(
    color: AppColors.ferrariColor,
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );

  static final TextStyle productCardDiscountPriceStyle = GoogleFonts.poppins(
    color: AppColors.gray11x,
    fontWeight: FontWeight.w500,
    fontSize: 10,
  );

// Menu View

  static final TextStyle menuTileStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static final TextStyle menuTileLogOutStyle = GoogleFonts.poppins(
    color: AppColors.ferrariColor,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static final TextStyle accountMenuTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w700,
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

// Adress View

  static final TextStyle addAddressButtonStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final TextStyle addressCardTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );

  static final TextStyle addressCardTextStyle = GoogleFonts.roboto(
    color: AppColors.spanishGray,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.5,
  );

  static final TextStyle addressCardBannerTextStyle = GoogleFonts.roboto(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 8,
  );

  static final TextStyle addressCheckBoxTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

// Orders View

  static final TextStyle ordersTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final TextStyle ordersCardTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 15,
    letterSpacing: 0.5,
  );

  static final TextStyle ordersCardPriceStyle = GoogleFonts.roboto(
    color: AppColors.ferrariColor,
    fontWeight: FontWeight.w500,
    fontSize: 13,
  );

  static final TextStyle ordersCardStatusContinuesStyle = GoogleFonts.roboto(
    color: AppColors.ballBlue,
    fontWeight: FontWeight.w500,
    fontSize: 13,
  );

  static final TextStyle ordersCardStatusComplatedStyle = GoogleFonts.roboto(
    color: AppColors.ufoGreen,
    fontWeight: FontWeight.w500,
    fontSize: 13,
  );

// Order Detail View

  static final TextStyle orderDetailTitleStyle = GoogleFonts.poppins(
    color: AppColors.ferrariColor,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  static final TextStyle orderDetailCardTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontSize: 16,
  );

  static final TextStyle orderDetailCardValueStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );

  static final TextStyle orderDetailCardValueStatusContuniueStyle =
      GoogleFonts.poppins(
    color: AppColors.ballBlue,
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );

  static final TextStyle orderDetailCardValueStatusComplatedeStyle =
      GoogleFonts.poppins(
    color: AppColors.ufoGreen,
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );

  static final TextStyle orderDetailCardStatusContinuesStyle =
      GoogleFonts.poppins(
    color: AppColors.ballBlue,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  static final TextStyle orderDetailCardStatusComplatedStyle =
      GoogleFonts.poppins(
    color: AppColors.ufoGreen,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

// Tranfer Form View

  static final TextStyle transferFormReceiptStyle = GoogleFonts.poppins(
    color: AppColors.spanishGray,
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );

  static final TextStyle transferFormReceiptButtonStyle = GoogleFonts.poppins(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

// Product Detail View

  static final TextStyle productDetailTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontSize: 14,
  );

  static final TextStyle productDetailSubTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final TextStyle productDetailPriceStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 24,
  );

  static final TextStyle productDetailDiscountStyle = GoogleFonts.poppins(
    color: AppColors.gray11x,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final TextStyle productDetailCountStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );

  static final TextStyle productDetailStockCodeStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static final TextStyle productDetailButtonStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final TextStyle productDetailAddCartStyle = GoogleFonts.poppins(
    color: Colors.white,
    fontWeight: FontWeight.w900,
    fontSize: 14,
  );

  static final TextStyle productDetailAddCartPriceStyle = GoogleFonts.poppins(
    color: Colors.white,
    fontWeight: FontWeight.w800,
    fontSize: 14,
  );

  static final TextStyle productDetailAddCartSubTextStyle = GoogleFonts.poppins(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );

  static final TextStyle productDetailRatesTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
  static final TextStyle productDetailRatesTextStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

// Cart View

  static final TextStyle cartSubTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final TextStyle cartProductCartTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );

  static final TextStyle cartProductCartPriceStyle = GoogleFonts.poppins(
    color: AppColors.ferrariColor,
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );

  static final TextStyle cartproductCardDiscountPriceStyle =
      GoogleFonts.poppins(
    color: AppColors.gray11x,
    fontWeight: FontWeight.w500,
    fontSize: 10,
  );

  static final TextStyle cartProductCartCounteStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );

  static final TextStyle cartTotalCardTitleStyle = GoogleFonts.poppins(
    color: AppColors.spanishGray,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static final TextStyle cartTotalCardValueStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final TextStyle cartTotalCardValueGreenStyle = GoogleFonts.poppins(
    color: Colors.green,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final TextStyle cartTotalCardValueRedStyle = GoogleFonts.poppins(
    color: AppColors.ferrariColor,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final TextStyle cartEmptyTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 42,
  );

  static final TextStyle cartEmptyTextStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final TextStyle cartCouponButtonStyle = GoogleFonts.poppins(
    color: AppColors.ferrariColor,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  // Compare View

  static final TextStyle compareHeaderStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final TextStyle compareCardTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );

  // Filter View

  static final TextStyle filterTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final TextStyle filterListTileStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  // Bank Account View

  static final TextStyle bankAccountTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );

  static final TextStyle bankAccountNameStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  static final TextStyle bankAccountNumberStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  // Categories View

  static final TextStyle categoriesCardTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  // Payment View

  static final TextStyle paymentTitleStyle = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );
  static final TextStyle paymentChangeStyle = GoogleFonts.poppins(
    color: AppColors.ferrariColor,
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );

  static final TextStyle paymentAdressStyle = GoogleFonts.roboto(
    color: AppColors.spanishGray,
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );

  static final TextStyle paymentTypeTitleStyle = GoogleFonts.roboto(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final TextStyle paymentContractGrey = GoogleFonts.poppins(
    color: AppColors.spanishGray,
    fontWeight: FontWeight.w400,
    fontSize: 11,
  );

  static final TextStyle paymentContractRed = GoogleFonts.poppins(
    color: AppColors.ferrariColor,
    fontWeight: FontWeight.w500,
    fontSize: 11,
    decoration: TextDecoration.underline,
    decorationColor: AppColors.ferrariColor,
  );

  static final TextStyle paymentSuccessfulTitleStyle = GoogleFonts.poppins(
    color: Colors.green,
    fontWeight: FontWeight.w500,
    fontSize: 24,
  );

  static final TextStyle paymentSuccessfulTextStyle = GoogleFonts.poppins(
    color: AppColors.spanishGray,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  // Service Form View

  static final TextStyle bottomSheetTextStyle = GoogleFonts.roboto(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  // SnackBar
  static final TextStyle snackBarText = GoogleFonts.roboto(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final TextStyle snackBarButton = GoogleFonts.roboto(
    color: AppColors.ferrariColor,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );
}
