import 'package:driver_app/common/constant/colors.dart';
import 'package:driver_app/common/constant/text_style.dart';
import 'package:driver_app/common/widgets/shift_planner_card_widget.dart';
import 'package:flutter/material.dart';

class ShiftPlannerPage extends StatefulWidget {
  const ShiftPlannerPage({super.key});

  @override
  State<ShiftPlannerPage> createState() => _ShiftPlannerPageState();
}

class _ShiftPlannerPageState extends State<ShiftPlannerPage> {
  @override
  Widget build(BuildContext context) {
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
            child: ShiftPlannerCardDetailsWidget(),
          ),
        ),
      ),
    );
  }
}
