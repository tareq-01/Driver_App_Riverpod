import 'package:driver_app/common/constant/colors.dart';
import 'package:driver_app/common/constant/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class ShiftTimeSummaryWidget extends StatelessWidget {
  ShiftTimeSummaryWidget({
    super.key,
    required this.Image,
    required this.text,
    required this.hour,
  });
  String Image;
  String text;
  String hour;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14.75, right: 18.75),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Image,
                fit: BoxFit.cover,

                height: 20,
                width: 20,
                colorFilter: ColorFilter.mode(
                  AppColors.iconColor,
                  BlendMode.srcIn,
                ),
              ),
              Text(
                text,
                style: AppStyles().tag600ColorTextStyle(AppColors.hintColor),
              ),
              Container(
                alignment: Alignment.center,
                //width: 60,
                child: Text(
                  hour,
                  style: AppStyles().buttonSmallSubTitle(
                    AppColors.grey700Color,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
