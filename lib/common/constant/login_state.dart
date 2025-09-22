class LoginState {
  String? emailErrorMessage;
  String? passErrorMessage;
  bool? isButtonEnable;
  bool isObscure;
  bool? isChecked;
  bool? inProgress;

  LoginState({
    this.emailErrorMessage,
    this.isButtonEnable = false,
    this.passErrorMessage,
    this.isObscure = true,
    this.isChecked = true,
    this.inProgress = false,
  });

  LoginState copyWith({
    String? emailErrorMessage,
    bool? isButtonEnable,
    String? passErrorMessage,
    bool? isObscure,
    bool? isChecked,
    bool? inProgress,
  }) {
    return LoginState(
      emailErrorMessage: emailErrorMessage,
      passErrorMessage: passErrorMessage,
      isButtonEnable: isButtonEnable ?? this.isButtonEnable,
      isObscure: isObscure ?? this.isObscure,
      isChecked: isChecked ?? this.isChecked,
      inProgress: inProgress??this.inProgress ,
    );
  }
}
