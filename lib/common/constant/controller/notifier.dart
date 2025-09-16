import 'package:driver_app/common/constant/response.dart';
import 'package:driver_app/common/constant/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginNotifier extends StateNotifier<Response> {
  // LoginNotifier(super.state);
  LoginNotifier() : super(Response());

  final TextEditingController emailTEcontroller = TextEditingController();

  final TextEditingController passTEcontroller = TextEditingController();
  void showPassword() {
    state = state.copyWith(
      isObscure: !state.isObscure,
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
    );
  }
}

final loginProvider = StateNotifierProvider<LoginNotifier, Response>(
  (ref) => LoginNotifier(),
);
