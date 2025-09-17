import 'package:driver_app/common/widgets/shift_time_summary_widget.dart';
import 'package:flutter/material.dart';

class ShiftDetailsTimeSummaryWidget extends StatelessWidget {
  const ShiftDetailsTimeSummaryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ShiftTimeSummaryWidget(
          Image: "assets/svg_icon/calendar_clock.svg",
          text: "Planned",
          hour: "23hr",
        ),
        ShiftTimeSummaryWidget(
          Image: "assets/svg_icon/clock_loader_20.svg",
          text: "Used",
          hour: "20hr",
        ),
        ShiftTimeSummaryWidget(
          Image: "assets/svg_icon/pause.svg",
          text: "Break",
          hour: "1hr 45m",
        ),
        ShiftTimeSummaryWidget(
          Image: "assets/svg_icon/delivery_truck_bolt.svg",
          text: "Worked",
          hour: "18hr 15m",
        ),
      ],
    );
  }
}
