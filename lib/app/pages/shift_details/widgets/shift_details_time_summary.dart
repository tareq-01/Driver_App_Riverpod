import 'package:driver_app/common/constant/model/shift_details_model.dart';
import 'package:driver_app/app/pages/shift_list/widgets/shift_time_summary_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShiftDetailsTimeSummaryWidget extends StatelessWidget {
  ShiftDetailsTimeSummaryWidget({super.key, required this.shiftDetailsModel});
  ShiftDetailsModel shiftDetailsModel = ShiftDetailsModel();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ShiftTimeSummaryWidget(
          Image: "assets/svg_icon/calendar_clock.svg",
          text: "Planned",
          hour: shiftDetailsModel.data!.shiftPlannedTime.toString(),
        ),
        ShiftTimeSummaryWidget(
          Image: "assets/svg_icon/clock_loader_20.svg",
          text: "Used",
          hour: shiftDetailsModel.data!.breakTime.toString(),
        ),
        ShiftTimeSummaryWidget(
          Image: "assets/svg_icon/pause.svg",
          text: "Break",
          hour: shiftDetailsModel.data!.breakTime.toString(),
        ),
        ShiftTimeSummaryWidget(
          Image: "assets/svg_icon/delivery_truck_bolt.svg",
          text: "Worked",
          hour: shiftDetailsModel.data!.workingTime.toString(),
        ),
      ],
    );
  }
}
