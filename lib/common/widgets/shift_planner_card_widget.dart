import 'package:driver_app/app/pages/shift_details_page.dart';
import 'package:driver_app/common/constant/colors.dart';
import 'package:driver_app/common/constant/model/shift_planner_model.dart';
import 'package:driver_app/common/constant/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShiftPlannerCardDetailsWidget extends StatelessWidget {
  const ShiftPlannerCardDetailsWidget({super.key, required this.shiftList});
  final List<ShiftList> shiftList;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: shiftList.length,
          itemBuilder: (context, index) {
            final shift = shiftList[index];
            return Column(
              children: [
                Card(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Container(
                      height: 70,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svg_icon/calendar_clock.svg',
                            height: 26,
                            width: 24,
                            colorFilter: ColorFilter.mode(
                              AppColors.iconColor,
                              BlendMode.srcIn,
                            ),
                          ),
                          SizedBox(width: 8),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "${shift.status.toString()} | ",
                                      style: AppStyles()
                                          .subTitle600ColorTextStyle(
                                            AppColors.subTitle600Color,
                                          ),
                                    ),
                                    Text(
                                      shift.id.toString(),
                                      style: AppStyles()
                                          .subTitle600ColorTextStyle(
                                            AppColors.subTitle600Color,
                                          ),
                                    ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,

                                  children: [
                                    Wrap(
                                      children: [
                                        Text(
                                          //"02 Sept.2025, 12:00 - 3:00",
                                          "${shift.scheduledStart.toString()},",

                                          style: AppStyles().regular12TextStyle(
                                            AppColors.grey700Color,
                                          ),
                                        ),
                                        Text(
                                          //"02 Sept.2025, 12:00 - 3:00",
                                          shift.scheduledEnd.toString(),

                                          style: AppStyles().regular12TextStyle(
                                            AppColors.grey700Color,
                                          ),
                                        ),
                                      ],
                                    ),

                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ShiftDetailsPage(),
                                          ),
                                        );
                                      },
                                      child: SvgPicture.asset(
                                        "assets/svg_icon/keyboard_arrow_right.svg",
                                        height: 20,
                                        width: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Text(
                                    shift.car.toString(),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: AppStyles().address600ColorTextStyle(
                                      AppColors.grey700Color,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Align(
                            alignment: Alignment.topRight,
                            child: SvgPicture.asset(
                              "assets/svg_icon/Ellipse 717.svg",
                              width: 6,
                              height: 6,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
