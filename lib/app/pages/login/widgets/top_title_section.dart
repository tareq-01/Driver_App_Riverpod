import 'package:driver_app/common/constant/colors.dart';
import 'package:driver_app/common/constant/text_style.dart';
import 'package:flutter/material.dart';

class TopTitleSection extends StatelessWidget {
  const TopTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Sign In",
            style: AppStyles().titleTextStyle(AppColors.grey800Color),
          ),
          SizedBox(height: 8),
          Text(
            "Please sign in to continue",
            style: AppStyles().regular14TextStyle(AppColors.grey700Color),
          ),
        ],
      ),
    );
  }
}
