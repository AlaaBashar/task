import 'package:flutter/gestures.dart';

import '../../../../src.export.dart';

class ResendOTPWidget extends StatelessWidget {
  const ResendOTPWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerifyOtpCubit, VerifyOtpState>(
      builder: (context, state) {
        final bloc = VerifyOtpCubit.get(context);

        return Center(
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: 'إعادة إرسال الرمز',
              recognizer: TapGestureRecognizer()
                ..onTap = bloc.timerValue == 0
                    ? () {
                        bloc.resetTimer();
                        bloc.triggeredTimer();
                      }
                    : () {},
              style: context.textTheme.bodyMedium!.copyWith(
                color: bloc.timerValue == 0
                    ? Colors.blue
                    : ColorName.black.withOpacity(0.56),
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(text: ' خلال ${bloc.timerValue.toString()} ثانية'),
          ])),
        );
      },
    );
  }
}
