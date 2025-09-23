import 'package:driver_app/common/constant/model/overview_model.dart';
import 'package:driver_app/common/widgets/overview_details_widget.dart';
import 'package:flutter/material.dart';

class ShiftDetailsOverview extends StatelessWidget {
   ShiftDetailsOverview({
    super.key,required this.overviewSectionModel
  });
OverviewSectionModel overviewSectionModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      OverviewDetailsWidget(
      title: "Request",
      total: overviewSectionModel.data.summary.,
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

