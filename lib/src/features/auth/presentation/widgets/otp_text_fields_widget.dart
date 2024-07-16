import 'package:flutter/services.dart';
import '../../../../src.export.dart';

class OTPTextFieldsWidget extends StatelessWidget {
  final String phoneNumber;

  const OTPTextFieldsWidget({
    super.key,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerifyOtpCubit, VerifyOtpState>(
      builder: (context, state) {
        final bloc = VerifyOtpCubit.get(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'تأكيد رقم الهاتف عبر رمز التحقق',
                style: context.textTheme.titleMedium,
              ),
              const SizedBox(height: 6),
              Text(
                'قمنا بإرسال رمز التحقق إلى رقم الهاتف +962${phoneNumber}, يرجى إدخاله في الحقل أدناه:',
                style: context.textTheme.bodyMedium!
                    .copyWith(fontWeight: FontHelper.regular),
              ),
              const SizedBox(height: 21),
              Row(
                children: [
                  Expanded(child: OTPFieldWidget(controller: bloc.firstDigit)),
                  const SizedBox(width: 6),
                  Expanded(child: OTPFieldWidget(controller: bloc.secondDigit)),
                  const SizedBox(width: 6),
                  Expanded(child: OTPFieldWidget(controller: bloc.thirdDigit)),
                  const SizedBox(width: 6),
                  Expanded(child: OTPFieldWidget(controller: bloc.fourthDigit)),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}

class OTPFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  const OTPFieldWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 49,
      color: ColorName.gray,
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(1),
        ],
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
