import '../../../../src.export.dart';

class PhoneNumberWidget extends StatelessWidget {
  const PhoneNumberWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'إدخال رقم الهاتف للمتابعة',
            style: context.textTheme.titleMedium,
          ),
          const SizedBox(height: 6),
          Text(
            'سنقوم بإرسال رسالة تأكد من رقم الهاتف عبر الواتساب أو عبر رسالة قصيرة SMS',
            style: context.textTheme.bodyMedium!
                .copyWith(fontWeight: FontHelper.regular),
          ),
          const SizedBox(height: 21),
          const PhoneTextFieldWidget(),
        ],
      ),
    );
  }
}
