sealed class VerifyOtpState {}

final class VerifyOtpInitial extends VerifyOtpState {}

final class VerifyOtpLoading extends VerifyOtpState {}

final class VerifyOtpFailure extends VerifyOtpState {
  final String errorMessage;

  VerifyOtpFailure({required this.errorMessage});
}

final class VerifyOtpSuccess extends VerifyOtpState {
  final String message;

  VerifyOtpSuccess({required this.message});
}

final class TriggeredTimerState extends VerifyOtpState {}
