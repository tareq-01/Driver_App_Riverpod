import 'package:driver_app/common/widgets/overview_details_widget.dart';
import 'package:flutter/material.dart';

class ShiftDetailsOverview extends StatelessWidget {
  const ShiftDetailsOverview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      OverviewDetailsWidget(
      title: "Request",
      total: 7,
      completed: 7,
      isError: false,
    ),
    SizedBox(height: 20),
    OverviewDetailsWidget(
      title: "Stops",
      total: 45,
      completed: 27,
      isError: false,
    ),
    SizedBox(height: 20),
    
    OverviewDetailsWidget(
      title: "Packages",
      total: 87,
      completed: 7,
      isError: true,
    ),
      ],
    );
  }
}

