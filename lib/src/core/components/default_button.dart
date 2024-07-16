import '../../src.export.dart';

class DefaultButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final EdgeInsetsDirectional padding;
  const DefaultButton({
    super.key,
    required this.title,
    required this.onTap,
    this.padding = EdgeInsetsDirectional.zero,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: padding,
        height: 49,
        color: ColorName.black.withOpacity(0.56),
        child: Row(
          children: [
            const SizedBox(width: 13),
            Expanded(
              child: Text(
                title,
                style: context.textTheme.bodyMedium!.copyWith(
                  color: ColorName.white,
                  fontSize: 15,
                ),
              ),
            ),
            Assets.svg.arrowBackIcon.svg(),
            const SizedBox(width: 17)
          ],
        ),
      ),
    );
  }
}
