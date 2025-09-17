class Response {
  String? emailErrorMessage;
  String? passErrorMessage;
  bool? isButtonEnable;
  bool isObscure;
  bool? isChecked;

  Response({
    this.emailErrorMessage,
    this.isButtonEnable = false,
    this.passErrorMessage,
    this.isObscure = true,
    this.isChecked = true,
  });

  Response copyWith({
    String? emailErrorMessage,
    bool? isButtonEnable,
    String? passErrorMessage,
    bool? isObscure,
    bool? isChecked,
  }) {
    return Response(
      emailErrorMessage: emailErrorMessage,
      passErrorMessage: passErrorMessage,
      isButtonEnable: isButtonEnable ?? this.isButtonEnable,
      isObscure: isObscure ?? this.isObscure,
      isChecked: isChecked ?? this.isChecked,
    );
  }
}
