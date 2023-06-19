import 'package:flutter/material.dart';
import '../../base/util/app_colors.dart';

class AppCheckBox extends StatelessWidget {
  const AppCheckBox({super.key, required this.value, required this.onChanged});
  final bool? value;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.9,
      child: Checkbox(
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: AppColors.ferrariColor, width: 5),
            borderRadius: BorderRadius.circular(6)),
        splashRadius: 0,
        activeColor: AppColors.ferrariColor,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
