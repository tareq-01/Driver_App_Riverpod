import 'package:driver_app/common/constant/controller/network_caller.dart';
import 'package:driver_app/common/constant/controller/network_response.dart';
import 'package:driver_app/common/constant/response.dart';
import 'package:driver_app/common/constant/urls.dart';
import 'package:driver_app/common/model/shift_Planner_model.dart';
import 'package:driver_app/common/widgets/snackbar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShiftPlannerNotifier extends StateNotifier<Response> {
  ShiftPlannerNotifier() : super(Response());
  ShiftPlannerModel shiftPlannerModel = ShiftPlannerModel();
  ShiftList shiftList = ShiftList();

  final bool inProgress = false;
  
  Future<void> loadShiftData(context) async {
    inProgress == true;

    final token =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6IjIiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiQ3B0LiBMeW54IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvZW1haWxhZGRyZXNzIjoiZ2VuaWUuc2FiYmlyK2RldmRyMUBnbWFpbC5jb20iLCJDb21wYW55SWQiOiIxIiwiQ3VzdG9tZXJJZCI6IiIsIkRyaXZlcklkIjoiMSIsIkNvbnRhY3RObyI6Iis0NTM0NTY3ODkwIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiVGVhbU1lbWJlciIsIlVzZXJUeXBlIjoiRHJpdmVyIiwiRGV2aWNlSWQiOiIiLCJEZXZpY2VUb2tlbiI6IiIsIlJlcXVlc3RGcm9tIjoiRHJpdmVyQXBwIiwic3ViIjoiZ2VuaWUuc2FiYmlyK2RldmRyMUBnbWFpbC5jb20iLCJqdGkiOiJhMzA0ODRiYy05MzU5LTRmZjAtOWQ5Ni02ZjNhNDZlZjRlNjUiLCJleHAiOjE3NTgzMzgwMzgsImlzcyI6IkxpbWFkaUlzc3VlckRldiIsImF1ZCI6IkxpbWFkaUF1ZGllbmNlRGV2In0.Kmho8G7iYkVze5Mx7a1AgR0h8SdKe3p_HZtNMSNCWIE";
    final NetworkResponse response = await NetworkCaller().getRequest(
      Urls.shiftPlannerUrl,
      token,
    );
    //debugPrint("response: ${response!.jsonResponse}");
    if (response.isSuccess) {
      //AuthUtility.getAuthorizationHeader();

      shiftPlannerModel = ShiftPlannerModel.fromJson(response.jsonResponse);

      //debugPrint("shift Planner: ${shiftPlannerModel.data!.shiftList}");
      inProgress == false;
    } else {
      SnackMessage(context, "No Data available", true);
    }
  }
}

// ignore: non_constant_identifier_names
final ShiftPlannerProvider =
    StateNotifierProvider<ShiftPlannerNotifier, Response>(
      (ref) => ShiftPlannerNotifier(),
    );
