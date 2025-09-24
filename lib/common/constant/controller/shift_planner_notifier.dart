
import 'package:driver_app/common/constant/auth.dart';
import 'package:driver_app/common/constant/controller/login_notifier.dart';
import 'package:driver_app/common/constant/controller/network_caller.dart';
import 'package:driver_app/common/constant/controller/network_response.dart';
import 'package:driver_app/common/constant/model/shift_planner_model.dart';
import 'package:driver_app/common/constant/shift_planner_state.dart';
import 'package:driver_app/common/constant/urls.dart';
import 'package:driver_app/common/widgets/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShiftPlannerNotifier extends StateNotifier<ShiftPlannerState> {
  ShiftPlannerNotifier() : super(ShiftPlannerState()){
    
loadShiftPlannerData(navigatorKey.currentContext!);
  }

  ShiftPlannerModel? shiftPlannerModel;

  Future<void> loadShiftPlannerData(BuildContext context) async {
   
    
    state = state.copyWith(inProgress: true);
    final token = await AuthUtility.getToken();

    final NetworkResponse response = await NetworkCaller().getRequest(
      Urls.shiftPlannerUrl,
      token.toString(),
    );

    if (response.isSuccess) {
      shiftPlannerModel = ShiftPlannerModel.fromJson(response.jsonResponse);
     // log(shiftPlannerModel!.data!.shiftList!.length.toString());
      state = state.copyWith(inProgress: false);
    } else {
      SnackMessage(context, "No Data available");
     // log("Hello");

      state = state.copyWith(inProgress: false);
    }
   
  }
}


