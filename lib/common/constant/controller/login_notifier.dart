import 'dart:developer';
import 'package:driver_app/app/pages/shift_planner_page.dart';
import 'package:driver_app/common/constant/auth.dart';
import 'package:driver_app/common/constant/controller/network_caller.dart';
import 'package:driver_app/common/constant/controller/network_response.dart';
import 'package:driver_app/common/constant/controller/shift_planner_notifier.dart';
import 'package:driver_app/common/constant/response.dart';
import 'package:driver_app/common/constant/urls.dart';
import 'package:driver_app/common/constant/utility.dart';
import 'package:driver_app/common/widgets/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginNotifier extends StateNotifier<LoginState> {
  // LoginNotifier(super.state);
  LoginNotifier() : super(LoginState()) {
    checkToken();
  }
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static Future<dynamic> navigateTo(Widget page) {
    return navigatorKey.currentState!.push(
      MaterialPageRoute(builder: (_) => page),
    );
  }

  Future<void> checkToken() async {
    String? token = await AuthUtility.getToken();
    log(token.toString());
    if (token != null) {
      navigateTo(ShiftPlannerPage());
    }
  }

  final TextEditingController emailTEcontroller = TextEditingController();
  final TextEditingController passTEcontroller = TextEditingController();
  void showPassword() {
    state = state.copyWith(
      isObscure: !state.isObscure,
      emailErrorMessage: state.emailErrorMessage,
      passErrorMessage: state.passErrorMessage,
    );
  }

  void rememberMe() {
    state = state.copyWith(
      isChecked: !state.isChecked!,
      emailErrorMessage: state.emailErrorMessage,
      passErrorMessage: state.passErrorMessage,
    );
  }

  void emailChecker() {
    String? errorText;
    bool? isButtonEnabled;
    if (emailTEcontroller.text.trim().isEmpty) {
      errorText = "Email Can't be Empty";
      isButtonEnabled = false;
    } else if (!Utility().validateEmail(emailTEcontroller.text.trim())) {
      errorText = "Email is Invalid";
      isButtonEnabled = false;
    } else {
      errorText = null;
      isButtonEnabled = true;
    }
    state = state.copyWith(
      emailErrorMessage: errorText,
      isButtonEnable: isButtonEnabled,
      passErrorMessage: state.passErrorMessage,
    );
  }

  void passChecker() {
    String? errorText;
    bool? isButtonEnabled;

    if (passTEcontroller.text.isEmpty) {
      errorText = "Password Can't be Empty";
      isButtonEnabled = false;
    } else if (!Utility().validatePassword(passTEcontroller.text)) {
      errorText = "Password Must be 8 Characters";
      isButtonEnabled = false;
    } else {
      errorText = null;
      isButtonEnabled = true;
    }
    state = state.copyWith(
      passErrorMessage: errorText,
      isButtonEnable: isButtonEnabled,
      emailErrorMessage: state.emailErrorMessage,
    );
  }

  Future<void> login(context) async {
    NetworkResponse response = await NetworkCaller().postRequest(
      Urls.loginUrl,
      body: {
        "username": emailTEcontroller.text.trim(),
        "password": passTEcontroller.text,
        "requestFrom": "DriverApp",
      },
    );
    if (response.isSuccess == true) {
      SnackMessage(context, "Login Successfully");
      String token = response.jsonResponse["data"]['token'];
      log(token);
      await AuthUtility.saveToken(token);
      log("token: $token");

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ShiftPlannerPage()),
      );
      ShiftPlannerNotifier shiftPlannerNotifier = ShiftPlannerNotifier();
      shiftPlannerNotifier.loadShiftPlannerData(context);
    } else {
      SnackMessage(context, "Login Failed", true);
    }
  }
}

final loginProvider = StateNotifierProvider<LoginNotifier, LoginState>(
  (ref) => LoginNotifier(),
);
