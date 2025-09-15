import 'package:driver_app/common/constant/response.dart';
import 'package:driver_app/common/constant/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginNotifier extends StateNotifier<Response> {
  // LoginNotifier(super.state);
  LoginNotifier() : super(Response());

  final TextEditingController emailTEcontroller = TextEditingController();

  final TextEditingController passTEcontroller = TextEditingController();

  void emailChecker() {
    if (emailTEcontroller.text.trim().isEmpty) {
      //log("her");
      state = state.copyWith(
        emailErrorMessage: "Email Can't be Empty",
        isButtonEnable: false,
      );
    } else if (!Utility().validateEmail(emailTEcontroller.text.trim())) {
      state = state.copyWith(
        emailErrorMessage: "Email is Invalid",
        isButtonEnable: false,
      );
    } else {
      state = state.copyWith(emailErrorMessage: null, isButtonEnable: true);
    }
  }

  void passChecker() {
    if (passTEcontroller.text.isEmpty) {
      state = state.copyWith(
        passErrorMessage: "Password Can't be Empty",
        isButtonEnable: false,
      );
    } else if (!Utility().validatePassword(passTEcontroller.text)) {
      state = state.copyWith(
        passErrorMessage: "Password Must be 8 Characters",
        isButtonEnable: false,
      );
    } else {
      state = state.copyWith(passErrorMessage: null, isButtonEnable: true);
    }
  }
}

final loginProvider = StateNotifierProvider<LoginNotifier, Response>(
  (ref) => LoginNotifier(),
);
