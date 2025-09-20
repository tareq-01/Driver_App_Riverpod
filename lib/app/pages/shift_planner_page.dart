import 'package:driver_app/common/constant/colors.dart';
import 'package:driver_app/common/constant/controller/shift_planner_notifier.dart';
import 'package:driver_app/common/constant/text_style.dart';
import 'package:driver_app/common/model/shift_Planner_model.dart';
import 'package:driver_app/common/widgets/shift_planner_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ignore: must_be_immutable
class ShiftPlannerPage extends ConsumerWidget {
  ShiftPlannerModel shiftPlannerModel = ShiftPlannerModel();

  ShiftList shiftList = ShiftList();

  final bool inProgress = false;

  final String errorMessage = "";

  ShiftPlannerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shiftPlannerController = ref.read(ShiftPlannerProvider.notifier);
    final shift = ref.watch(ShiftPlannerProvider);
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
        // child: shiftPlannerController.inProgress
        //     ? Center(child: CircularProgressIndicator())
        //     : _errorMessage.isNotEmpty
        //     ? Center(child: Text(_errorMessage))
        //     : shiftPlannerModel.data?.shiftList == null ||
        //           shiftPlannerModel.data!.shiftList!.isEmpty
        //     ? Center(child: Text("No shifts available"))
        //     : SingleChildScrollView(
        //         child: Padding(
        //           padding: const EdgeInsets.symmetric(
        //             horizontal: 16,
        //             vertical: 14,
        //           ),
        //           child: ShiftPlannerCardDetailsWidget(
        //             shiftList: shiftPlannerController.shiftPlannerModel.data!.shiftList!,
        //           ),
        //         ),
        //       ),
        child: Visibility(
          visible: shiftPlannerController.inProgress,
          replacement: CircularProgressIndicator(),
          child: ShiftPlannerCardDetailsWidget(
            shiftList:
                shiftPlannerController.shiftPlannerModel.data!.shiftList!,
          ),
        ),
      ),
    );
  }
}
