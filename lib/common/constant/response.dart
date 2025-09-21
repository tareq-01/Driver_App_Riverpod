class LoginState {
  String? emailErrorMessage;
  String? passErrorMessage;
  bool? isButtonEnable;
  bool isObscure;
  bool? isChecked;

  LoginState({
    this.emailErrorMessage,
    this.isButtonEnable = false,
    this.passErrorMessage,
    this.isObscure = true,
    this.isChecked = true,
  });

  LoginState copyWith({
    String? emailErrorMessage,
    bool? isButtonEnable,
    String? passErrorMessage,
    bool? isObscure,
    bool? isChecked,
  }) {
    return LoginState(
      emailErrorMessage: emailErrorMessage,
      passErrorMessage: passErrorMessage,
      isButtonEnable: isButtonEnable ?? this.isButtonEnable,
      isObscure: isObscure ?? this.isObscure,
      isChecked: isChecked ?? this.isChecked,
    );
  }
}
