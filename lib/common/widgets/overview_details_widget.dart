import 'package:driver_app/common/constant/colors.dart';
import 'package:driver_app/common/constant/text_style.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class OverviewDetailsWidget extends StatelessWidget {
  const OverviewDetailsWidget({
    super.key,
    required this.title,
    required this.total,
    required this.completed,  required this.isError,
  });
  final String title;
  final int total;
  final int completed;
  final bool isError;
  @override
  Widget build(BuildContext context) {
    //int initialValue = 0;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppStyles().regular12TextStyle(AppColors.primary600Color),
            ),
            Wrap(
              children: [
                Text(
                  completed.toString(),
                  style: AppStyles().buttonSmallSubTitle(
                    AppColors.grey700Color,
                  ),
                ),
                Text(
                  "/$total",
                  style: AppStyles().regular14TextStyle(AppColors.grey700Color),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 11),
        Stack(
          children: [
            LinearProgressBar(
              maxSteps: total,

              minHeight: 3,
              progressType:
                  LinearProgressBar.progressTypeLinear, // Use Linear progress
              currentStep: completed,

              progressColor: AppColors.primary600Color,
              backgroundColor: AppColors.grey500Color,
              borderRadius: BorderRadius.circular(4),
            ),
            if(isError)
            Positioned(
              child: Container(
                height: 3,
                width: 9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: AppColors.ternary500Color
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
