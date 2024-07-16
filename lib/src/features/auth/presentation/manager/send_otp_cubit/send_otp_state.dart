sealed class SendOTPState {}

final class SendOTPInitialState extends SendOTPState {}

final class SendOTPLoadingState extends SendOTPState {}

final class SendOTPFailureState extends SendOTPState {
  final String errorMessage;
  SendOTPFailureState({required this.errorMessage});
}

final class SendOTPSuccessState extends SendOTPState {
  final String message;
  SendOTPSuccessState({required this.message});
}
