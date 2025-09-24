import 'package:driver_app/common/constant/colors.dart';
import 'package:driver_app/common/constant/controller/shift_details_notifier.dart';
import 'package:driver_app/common/constant/shift_details_state.dart';
import 'package:driver_app/common/constant/text_style.dart';
import 'package:driver_app/app/pages/shift_details/widgets/shift_details_overview.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class OverViwSectionWidget extends StatelessWidget {
  const OverViwSectionWidget({
    super.key,
    required this.shiftDetailsState,
    required this.width,
    required this.shiftDetailsController,
  });

  final ShiftDetailsState shiftDetailsState;
  final double width;
  final ShiftDetailsNotifier shiftDetailsController;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        shiftDetailsController.overViewSectionModel?.data == null
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Overview",
                          style: AppStyles().subTitle600ColorTextStyle(
                            AppColors.subTitle600Color,
                          ),
                        ),
                        SizedBox(height: 8),
                        ShiftDetailsOverview(
                          overviewSectionModel:
                              shiftDetailsController.overViewSectionModel!,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
