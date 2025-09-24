import 'dart:developer';

import 'package:driver_app/common/constant/auth.dart';
import 'package:driver_app/common/constant/controller/network_caller.dart';
import 'package:driver_app/common/constant/controller/network_response.dart';
import 'package:driver_app/common/constant/model/shift_details_model.dart';
import 'package:driver_app/common/constant/shift_details_state.dart';
import 'package:driver_app/common/constant/urls.dart';
import 'package:driver_app/common/widgets/snackbar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/overview_model.dart';

class ShiftDetailsNotifier extends StateNotifier<ShiftDetailsState> {
  ShiftDetailsNotifier() : super(ShiftDetailsState());

  ShiftDetailsModel? shiftDetailsModel;
  OverViewSectionModel? overViewSectionModel;

  Future<void> shiftDetailsLoader(context, id) async {
    try {
      state = state.copyWith(inProgress: true);
      final token = await AuthUtility.getToken();
      log("Token ${token.toString()}");
      final NetworkResponse response = await NetworkCaller().getRequest(
        "${Urls.shiftDetailsUrl}/$id",
        token.toString(),
      );
      if (response.isSuccess) {
        shiftDetailsModel = ShiftDetailsModel.fromJson(response.jsonResponse);
        state = state.copyWith(inProgress: false);
      } else {
        SnackMessage(context, "No Data available");
        state = state.copyWith(inProgress: false);
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> overViewSectionLoader(context, id) async {
    try {
      state = state.copyWith(inProgress: true);
      final token = await AuthUtility.getToken();
      //log("Token ${token.toString()}");
      final NetworkResponse response = await NetworkCaller().getRequest(
        "${Urls.shiftDetailsOverViewUrl}=$id",
        token.toString(),
      );
      if (response.isSuccess) {
        overViewSectionModel = OverViewSectionModel.fromJson(
          response.jsonResponse,
        );
        state = state.copyWith(inProgress: false);
      } else {
        SnackMessage(context, "No Data available");
        state = state.copyWith(inProgress: false);
      }
    } catch (e) {
      log(e.toString());
    }
  }
}


