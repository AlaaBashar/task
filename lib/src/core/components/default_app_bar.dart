import '../../src.export.dart';

class DefaultAppBar extends StatelessWidget {
  final double height;
  const DefaultAppBar({super.key, this.height = 103});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        height: height,
        width: double.infinity,
        color: ColorName.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Trust',
              style: context.textTheme.headlineLarge!.copyWith(
                  color: ColorName.white,
                  fontFamily: FontFamily.rTLSaudiBold,
                  height: 1),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 50.0),
              child: Text(
                'كابتن',
                style: context.textTheme.headlineLarge!.copyWith(
                    color: ColorName.white,
                    fontFamily: FontFamily.simah,
                    height: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
