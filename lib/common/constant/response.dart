class Response {
  String? emailErrorMessage;

  String? passErrorMessage;
  bool? isButtonEnable;

  Response({this.emailErrorMessage, this.isButtonEnable = false,this.passErrorMessage});

  Response copyWith({String? emailErrorMessage, bool? isButtonEnable,String?passErrorMessage}) {
    return Response(
      emailErrorMessage: emailErrorMessage,
      passErrorMessage: passErrorMessage,
      isButtonEnable: isButtonEnable ?? this.isButtonEnable,
    );
  }
}
