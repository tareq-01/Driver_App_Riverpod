import 'package:driver_app/common/constant/colors.dart';
import 'package:driver_app/common/constant/text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.controller,
    required this.text,
    this.suffix,
    this.obs = false,
    this.onChanged,
    this.errorText,
  });
  final TextEditingController controller;
  final String text;
  final String? errorText;
  final Widget? suffix;
  final bool? obs;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obs!,
      controller: controller,
      decoration: InputDecoration(
        errorText: errorText,
        filled: true,
        fillColor: AppColors.whiteColor,
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.hintBorderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.hintBorderColor),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.hintBorderColor),
        ),

        hintText: text,
        hintStyle: AppStyles().regular14TextStyle(AppColors.grey500Color),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 12),
          child: suffix,
        ),
        suffixIconConstraints: BoxConstraints(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: AppColors.hintBorderColor),
        ),
      ),
      onChanged: onChanged,
    );
  }
}
