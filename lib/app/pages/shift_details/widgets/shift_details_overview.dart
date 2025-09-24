import 'package:driver_app/common/constant/model/overview_model.dart';
import 'package:driver_app/app/pages/shift_details/widgets/overview_details_widget.dart';
import 'package:flutter/material.dart';

/// ignore: must_be_immutable
class ShiftDetailsOverview extends StatelessWidget {
  ShiftDetailsOverview({super.key, required this.overviewSectionModel});
  OverViewSectionModel overviewSectionModel = OverViewSectionModel();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OverviewDetailsWidget(
          title: "Request",
          total: overviewSectionModel.data!.summary!.numberOfRequest!,
          completed:
              overviewSectionModel.data!.summary!.numberOfCompletedRequest!,
          isError: false,
        ),
        SizedBox(height: 20),
        OverviewDetailsWidget(
          title: "Stops",
          total: overviewSectionModel.data!.summary!.numberOfStop!,
          completed:
              overviewSectionModel.data!.summary!.numberOfInCompletedStop!,
          isError: false,
        ),
        SizedBox(height: 20),

        OverviewDetailsWidget(
          title: "Packages",
          total: overviewSectionModel.data!.summary!.numberOfProduct!,
          completed:
              overviewSectionModel.data!.summary!.numberOfInCompletedProduct!,
          isError: true,
        ),
      ],
    );
  }
}
