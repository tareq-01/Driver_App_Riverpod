import 'package:driver_app/app/pages/shift_planner_page.dart';
import 'package:driver_app/common/constant/colors.dart';
import 'package:driver_app/common/constant/controller/shift_details_notifier.dart';
import 'package:driver_app/common/constant/controller/shift_planner_notifier.dart';
import 'package:driver_app/common/constant/text_style.dart';
import 'package:driver_app/common/widgets/driver_details_widget.dart';
import 'package:driver_app/common/widgets/shift_details_overview.dart';
import 'package:driver_app/common/widgets/shift_details_time_summary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class ShiftDetailsPage extends ConsumerWidget {
  const ShiftDetailsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final shiftDetailsController = ref.read(shiftDetailsProvider.notifier);
    final shiftDetailsState = ref.watch(shiftDetailsProvider);
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        backgroundColor: AppColors.bodyColor,

        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(16.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShiftPlannerPage()),
              );
            },
            child: SizedBox(
              height: 20,
              width: 20,
              child: SvgPicture.asset(
                "assets/svg_icon/Group.svg",

                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  AppColors.arrowButton500Color,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),

        title: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            "Details",
            style: AppStyles().appBarTitle500TextStyle(
              AppColors.arrowButton500Color,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                shiftDetailsState.inProgress!
                    ? Center(child: CircularProgressIndicator())
                    : shiftDetailsController.shiftDetailsModel?.data == null
                    ? Center(child: Text("No Data Available"))
                    : Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            width: width,
                            //height: 108,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: EdgeInsets.all(12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Shift Time Summary",
                                    style: AppStyles()
                                        .subTitle600ColorTextStyle(
                                          AppColors.subTitle600Color,
                                        ),
                                  ),
                                  SizedBox(height: 8),
                                  ShiftDetailsTimeSummaryWidget(
                                    shiftDetailsModel: shiftDetailsController
                                .shiftDetailsModel!
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          DriverDetailsWidget(
                            width: width,
                            shiftDetailsModel: shiftDetailsController
                                .shiftDetailsModel!
                          ),
                          SizedBox(height: 12),
                          Container(
                            width: width,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Overview",
                                    style: AppStyles()
                                        .subTitle600ColorTextStyle(
                                          AppColors.subTitle600Color,
                                        ),
                                  ),
                                  SizedBox(height: 8),
                                  ShiftDetailsOverview(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
