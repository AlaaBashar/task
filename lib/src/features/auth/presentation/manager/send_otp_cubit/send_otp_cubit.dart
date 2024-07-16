import '../../../../../src.export.dart';

class SendOtpCubit extends Cubit<SendOTPState> {
  SendOtpCubit(this.authRepo) : super(SendOTPInitialState());
  final AuthRepo authRepo;
  static SendOtpCubit get(context) => BlocProvider.of(context);

  final phoneNumberController = TextEditingController();

  void sentOTPCode(BuildContext context) async {
    if (phoneNumberController.text.isEmpty) {
      Utils.showSnackBar(context, '...ادخل رقم الهاتف اولا');
      return;
    }
    context.go(OTPScreen(phoneNumber: phoneNumberController.text));
  }

  @override
  Future<void> close() {
    phoneNumberController.dispose();
    return super.close();
  }
}
