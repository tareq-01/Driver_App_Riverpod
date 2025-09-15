class Response {
  String? emailErrorMessage;
  String? passErrorMessage;
  bool? isButtonEnable;
  bool isObscure;

  Response({
    this.emailErrorMessage,
    this.isButtonEnable = false,
    this.passErrorMessage,
    this.isObscure = true,
  });

  Response copyWith({
    String? emailErrorMessage,
    bool? isButtonEnable,
    String? passErrorMessage,
    bool? isObscure,
  }) {
    return Response(
      emailErrorMessage: emailErrorMessage,
      passErrorMessage: passErrorMessage,
      isButtonEnable: isButtonEnable ?? this.isButtonEnable,
      isObscure: isObscure ?? this.isObscure,
    );
  }
}
