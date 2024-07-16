import '../../../../src.export.dart';

class OTPScreen extends StatelessWidget {
  final String phoneNumber;
  const OTPScreen({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifyOtpCubit(AuthRepoImpl())..triggeredTimer(),
      child: SafeArea(
        child: Scaffold(
          body: BlocConsumer<VerifyOtpCubit, VerifyOtpState>(
            listener: (__, state) {},
            builder: (context, state) {
              final bloc = VerifyOtpCubit.get(context);
              return Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const DefaultAppBar(),
                    const SizedBox(height: 21),
                    OTPTextFieldsWidget(
                      phoneNumber: phoneNumber,
                    ),
                    const SizedBox(height: 11),
                    DefaultButton(
                      title: 'الدخول إلى التطبيق',
                      padding:
                          const EdgeInsetsDirectional.symmetric(horizontal: 21),
                      onTap: () => bloc.verifyOTP(context),
                    ),
                    const SizedBox(height: 46),
                    const ResendOTPWidget(),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
