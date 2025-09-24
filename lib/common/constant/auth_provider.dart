import 'package:driver_app/common/constant/controller/login_notifier.dart';
import 'package:driver_app/common/constant/controller/shift_details_notifier.dart';
import 'package:driver_app/common/constant/controller/shift_planner_notifier.dart';
import 'package:driver_app/common/constant/login_state.dart';
import 'package:driver_app/common/constant/shift_details_state.dart';
import 'package:driver_app/common/constant/shift_planner_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthProvider{

  static final shiftPlannerProvider =
    StateNotifierProvider<ShiftPlannerNotifier, ShiftPlannerState>(
      (ref) => ShiftPlannerNotifier(),
    );

    static final shiftDetailsProvider =
    StateNotifierProvider<ShiftDetailsNotifier, ShiftDetailsState>(
      (ref) => ShiftDetailsNotifier(),
    );

    static final loginProvider = StateNotifierProvider<LoginNotifier, LoginState>(
  (ref) => LoginNotifier(),
);
}
