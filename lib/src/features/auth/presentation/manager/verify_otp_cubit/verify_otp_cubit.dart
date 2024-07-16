import 'dart:async';
import '../../../../../src.export.dart';

class VerifyOtpCubit extends Cubit<VerifyOtpState> {
  VerifyOtpCubit(this.authRepo) : super(VerifyOtpInitial());
  static VerifyOtpCubit get(BuildContext context) => BlocProvider.of(context);
  final AuthRepo authRepo;
  final firstDigit = TextEditingController();
  final secondDigit = TextEditingController();
  final thirdDigit = TextEditingController();
  final fourthDigit = TextEditingController();
  int timerValue = 60;
  Timer? timer;

  void verifyOTP(BuildContext context) {
    if (isCodeEmpty(context)) {
      return;
    }

    context.go(const WelcomeScreen());
  }

  bool isCodeEmpty(BuildContext context) {
    if (firstDigit.text.isEmpty ||
        secondDigit.text.isEmpty ||
        thirdDigit.text.isEmpty ||
        fourthDigit.text.isEmpty) {
      Utils.showSnackBar(context, '...ادخل الكود اولا');
      return true;
    }
    return false;
  }

  void triggeredTimer() {
    checkTimerActivation();
    timerImpl();
  }

  void timerImpl() {
    timer = Timer.periodic(const Duration(seconds: 1), (time) {
      if (timerValue == 0) {
        cancelTimer();
      } else {
        print(timerValue);
        --timerValue;
        emit(TriggeredTimerState());
      }
    });
  }

  void resetTimer() {
    timerValue = 60;
    emit(TriggeredTimerState());
  }

  void checkTimerActivation() {
    if (timer != null && timer!.isActive) {
      cancelTimer();
    }
  }

  void cancelTimer() {
    timer!.cancel();
  }

  @override
  Future<void> close() {
    firstDigit.dispose();
    secondDigit.dispose();
    thirdDigit.dispose();
    fourthDigit.dispose();
    timer!.cancel();
    return super.close();
  }
}
