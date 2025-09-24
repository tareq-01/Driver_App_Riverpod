import 'package:driver_app/app/pages/shift_list/shift_planner_page.dart';
import 'package:driver_app/common/constant/auth_provider.dart';
import 'package:driver_app/common/constant/colors.dart';
import 'package:driver_app/common/constant/controller/shift_details_notifier.dart';
import 'package:driver_app/common/constant/shift_details_state.dart';
import 'package:driver_app/common/constant/text_style.dart';
import 'package:driver_app/app/pages/shift_details/widgets/driver_details_widget.dart';
import 'package:driver_app/app/pages/shift_details/widgets/overview_section_widget.dart';
import 'package:driver_app/app/pages/shift_details/widgets/shift_details_overview.dart';
import 'package:driver_app/app/pages/shift_details/widgets/shift_details_time_summary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ShiftDetailsPage extends ConsumerWidget {
  const ShiftDetailsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shiftDetailsController = ref.read(
      AuthProvider.shiftDetailsProvider.notifier,
    );
    final shiftDetailsState = ref.watch(AuthProvider.shiftDetailsProvider);
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
            child: SvgPicture.asset(
              "assets/svg_icon/Group.svg",
              height: 20,
              width: 20,
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                AppColors.arrowButton500Color,
                BlendMode.srcIn,
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
                    //padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        shiftDetailsController.shiftDetailsModel?.data == null
                            ? Center(child: Text("No Data Available"))
                            : Skeletonizer(
                                enabled: shiftDetailsState.inProgress!,
                                child: Container(
                                  width: width,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),

                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          shiftDetailsModel:
                                              shiftDetailsController
                                                  .shiftDetailsModel!,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8),
                shiftDetailsController.shiftDetailsModel?.data == null
                    ? Center(child: Text("No Data Available"))
                    : Skeletonizer(
                        enabled: shiftDetailsState.inProgress!,
                        child: Container(
                          width: width,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DriverDetailsWidget(
                                width: width,
                                shiftDetailsModel:
                                    shiftDetailsController.shiftDetailsModel!,
                              ),
                            ],
                          ),
                        ),
                      ),

                SizedBox(height: 8),

                OverViwSectionWidget(
                  shiftDetailsState: shiftDetailsState,
                  width: width,
                  shiftDetailsController: shiftDetailsController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
