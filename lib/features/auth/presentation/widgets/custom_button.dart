import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/theme/app_border_radius.dart';
import 'package:fruit_hub/core/theme/app_colors.dart';
import 'package:fruit_hub/core/theme/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor,
    this.labelColor,
    this.borderColor,
    this.iconPath,
  });

  final String label;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? labelColor;
  final Color? borderColor;
  final String? iconPath;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        elevation: 0,
        minimumSize: const Size.fromHeight(54),
        side: BorderSide(
          color: borderColor ?? AppColors.mainBlack20,
          width: .5,
        ),
        shape: RoundedRectangleBorder(borderRadius: AppBorderRadius.large),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (iconPath != null)
            SizedBox(width: 20, child: SvgPicture.asset(iconPath!)),
          Spacer(),
          Text(
            label,
            style: AppTextStyles.bodyBaseBold.copyWith(color: labelColor),
          ),
          Spacer(),
          if (iconPath != null) const SizedBox(width: 20),
        ],
      ),
    );
  }
}
