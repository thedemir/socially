import 'package:flutter/material.dart';
import '../../base/util/app_colors.dart';

class AppCircularProgress extends StatelessWidget {
  const AppCircularProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      color: AppColors.ferrariColor,
    ));
  }
}
