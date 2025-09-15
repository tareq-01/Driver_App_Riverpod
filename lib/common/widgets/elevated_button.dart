import 'package:driver_app/common/constant/colors.dart';
import 'package:driver_app/common/constant/text_style.dart';
import 'package:flutter/material.dart';

class ElevatedButtonStyle extends StatelessWidget {
  const ElevatedButtonStyle({
    super.key,
    required this.text,
    this.onTap,
    this.buttonTextStyle,
    this.buttonWidth,
  });
  final String text;
  final VoidCallback? onTap;
  final TextStyle? buttonTextStyle;
  final double? buttonWidth;

  @override
  Widget build(BuildContext context) {
    final bool isDisabled = onTap == null;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: buttonWidth ?? 170,
        decoration: BoxDecoration(
          color: isDisabled ? Colors.grey : AppColors.primaryColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style:
                    buttonTextStyle ??
                    AppStyles().semiBold16TextStyle(AppColors.whiteColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
