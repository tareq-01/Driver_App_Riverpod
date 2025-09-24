import 'package:driver_app/app/pages/shift_details/shift_details_page.dart';
import 'package:driver_app/common/constant/auth_provider.dart';
import 'package:driver_app/common/constant/colors.dart';
import 'package:driver_app/common/constant/controller/shift_details_notifier.dart';
import 'package:driver_app/common/constant/model/shift_planner_model.dart';
import 'package:driver_app/common/constant/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart'; // Add this import

class ShiftPlannerCardDetailsWidget extends StatelessWidget {
  const ShiftPlannerCardDetailsWidget({super.key, required this.shiftList});
  final List<ShiftList> shiftList;

  String _formatDate(String dateTimeString) {
    final dateTime = DateTime.parse(dateTimeString).toLocal();
    final dateFormat = DateFormat('dd MMM. yyyy');
    return dateFormat.format(dateTime);
  }

  String _formatTimeRange(String startTime, String endTime) {
    final start = DateTime.parse(startTime).toLocal();
    final end = DateTime.parse(endTime).toLocal();
    final timeFormat = DateFormat('HH:mm');
    return '${timeFormat.format(start)} - ${timeFormat.format(end)}';
  }

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
                Consumer(
                  builder: (context, ref, widget) {
                    final shiftDetailsNotifier = ref.read(
                      AuthProvider.shiftDetailsProvider.notifier,
                    );
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShiftDetailsPage(),
                          ),
                        );
                        shiftDetailsNotifier.shiftDetailsLoader(
                          context,
                          shift.id,
                        );
                        shiftDetailsNotifier.overViewSectionLoader(
                          context,
                          shift.id,
                        );
                      },
                      child: Card(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                          Expanded(
                                            child: Text(
                                              // Format like "03 Nov. 2023, 08:00 - 17:00"
                                              "${_formatDate(shift.scheduledStart.toString())},"
                                              " ${_formatTimeRange(shift.scheduledStart.toString(), shift.scheduledEnd.toString())}",
                                              overflow: TextOverflow.ellipsis,
                                              style: AppStyles()
                                                  .regular12TextStyle(
                                                    AppColors.grey700Color,
                                                  ),
                                            ),
                                          ),

                                          InkWell(
                                            onTap: () {
                                              // Navigator.push(
                                              //   context,
                                              //   MaterialPageRoute(
                                              //     builder: (context) =>
                                              //         ShiftDetailsPage(),
                                              //   ),
                                              // );
                                              // shiftDetailsNotifier
                                              //     .shiftDetailsLoader(
                                              //       context,
                                              //       shift.id,
                                              //     );
                                              // shiftDetailsNotifier
                                              //     .overViewSectionLoader(
                                              //       context,
                                              //       shift.id,
                                              //     );
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
                                          " ${shift.car.toString()},${shift.drivers.toString()}",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: AppStyles()
                                              .address600ColorTextStyle(
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
                    );
                  },
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
