import 'dart:developer';

import 'package:driver_app/common/constant/controller/network_caller.dart';
import 'package:driver_app/common/constant/controller/network_response.dart';
import 'package:driver_app/common/constant/model/shift_planner_model.dart';
import 'package:driver_app/common/constant/urls.dart';
import 'package:driver_app/common/widgets/snackbar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShiftPlannerNotifier extends StateNotifier<dynamic> {
  ShiftPlannerNotifier() : super(0);

  ShiftPlannerModel? shiftPlannerModel;
  bool inProgress = false;

  Future<void> loadShiftPlannerData(context) async {
    log("here");
    try {
      inProgress = true;
      final token =
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6IjIiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiQ3B0LiBMeW54IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvZW1haWxhZGRyZXNzIjoiZ2VuaWUuc2FiYmlyK2RldmRyMUBnbWFpbC5jb20iLCJDb21wYW55SWQiOiIxIiwiQ3VzdG9tZXJJZCI6IiIsIkRyaXZlcklkIjoiMSIsIkNvbnRhY3RObyI6Iis0NTM0NTY3ODkwIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiVGVhbU1lbWJlciIsIlVzZXJUeXBlIjoiRHJpdmVyIiwiRGV2aWNlSWQiOiIiLCJEZXZpY2VUb2tlbiI6IiIsIlJlcXVlc3RGcm9tIjoiRHJpdmVyQXBwIiwic3ViIjoiZ2VuaWUuc2FiYmlyK2RldmRyMUBnbWFpbC5jb20iLCJqdGkiOiIxNWQwOTIyNC1kZmM1LTQzMGQtOGY5ZC0zZWViZjNmZGY4ODAiLCJleHAiOjE3NTg0NjgzMzIsImlzcyI6IkxpbWFkaUlzc3VlckRldiIsImF1ZCI6IkxpbWFkaUF1ZGllbmNlRGV2In0.td11nkPRybqnjPXUwWRv0Ed5FeJopOZh0Tn0OAWmLxk";

      final NetworkResponse response = await NetworkCaller().getRequest(
        Urls.shiftPlannerUrl,
        token,
      );
      
      if (response.isSuccess) {
        shiftPlannerModel = ShiftPlannerModel.fromJson(response.jsonResponse);
        log(shiftPlannerModel!.data!.shiftList!.length.toString());
        inProgress = false;
      } else {
        SnackMessage(context, "No Data available");

        inProgress = false;
      }
    } catch (e) {
      inProgress = false;

      throw Exception(e.toString());
    }
  }
}

final shiftPlannerProvider =
    StateNotifierProvider<ShiftPlannerNotifier, dynamic>(
      (ref) => ShiftPlannerNotifier(),
    );
