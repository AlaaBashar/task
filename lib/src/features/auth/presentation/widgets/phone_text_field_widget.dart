import 'package:task/src/src.export.dart';

class PhoneTextFieldWidget extends StatelessWidget {
  const PhoneTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorName.gray,
      width: double.infinity,
      height: 49,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: SendOtpCubit.get(context).phoneNumberController,
              keyboardType: TextInputType.number,
              style: context.textTheme.bodyMedium!.copyWith(
                fontSize: 15,
                fontWeight: FontHelper.semiBold,
                color: ColorName.black.withOpacity(0.56),
              ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                hintText: "رقم الهاتف",
                hintStyle: context.textTheme.bodyMedium!.copyWith(
                  fontSize: 15,
                  fontWeight: FontHelper.semiBold,
                  color: ColorName.black.withOpacity(0.56),
                ),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          Text(
            '962+',
            style: context.textTheme.labelSmall!
                .copyWith(fontWeight: FontHelper.medium),
          ),
          const SizedBox(width: 8),
          Assets.png.joFlagIcon.image(),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}
