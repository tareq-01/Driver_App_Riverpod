// ignore_for_file: unnecessary_null_comparison
import 'package:driver_app/common/constant/colors.dart';
import 'package:driver_app/common/constant/controller/shift_planner_notifier.dart';
import 'package:driver_app/common/constant/text_style.dart';
import 'package:driver_app/common/widgets/shift_planner_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShiftPlannerPage extends ConsumerWidget {
  ShiftPlannerPage({super.key,});
  // ShiftPlannerModel? shiftPlannerModel;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shiftPlannerController = ref.read(shiftPlannerProvider.notifier);
    final shiftPlannerState = ref.watch(shiftPlannerProvider);
        //Future.microtask(() => shiftPlannerController.loadShiftPlannerData(context));

    //log(inProgress.toString());
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        backgroundColor: AppColors.bodyColor,
        centerTitle: true,
        leading: SizedBox(),
        title: Padding(
          padding: const EdgeInsets.only(top: 32, bottom: 14),
          child: Text(
            "Shift Planner",
            style: AppStyles().appBarTitle500TextStyle(
              AppColors.arrowButton500Color,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Column(
              children: [
                shiftPlannerController.inProgress
                    ? Center(child: CircularProgressIndicator())
                    : shiftPlannerController
                                  .shiftPlannerModel
                                  ?.data
                                  ?.shiftList ==
                              null &&
                          (shiftPlannerController
                                      .shiftPlannerModel
                                      ?.data
                                      ?.shiftList ??
                                  [])
                              .isEmpty
                    ? Center(child: Text(" No Data found"))
                    : ShiftPlannerCardDetailsWidget(
                        shiftList: shiftPlannerController
                            .shiftPlannerModel!
                            .data!
                            .shiftList!,
                        // shiftList: [],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
