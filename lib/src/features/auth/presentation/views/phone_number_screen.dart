import '../../../../src.export.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<SendOtpCubit, SendOTPState>(
          listener: (__, state) {},
          builder: (context, state) {
            final bloc = SendOtpCubit.get(context);
            return Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DefaultAppBar(),
                  const SizedBox(height: 21),
                  const PhoneNumberWidget(),
                  const SizedBox(height: 11),
                  DefaultButton(
                    title: 'إرسال رمز التحقق',
                    padding:
                        const EdgeInsetsDirectional.symmetric(horizontal: 21),
                    onTap: () => bloc.sentOTPCode(context),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
