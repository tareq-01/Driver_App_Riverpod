import 'package:driver_app/common/constant/colors.dart';
import 'package:driver_app/common/constant/text_style.dart';
import 'package:flutter/material.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles().regular12TextStyle(AppColors.grey500Color),
        ),
        Text(
          subtitle,
          style: AppStyles().regular12TextStyle(AppColors.grey700Color),
        ),
      ],
    );
  }
}
