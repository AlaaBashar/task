import '../../src.export.dart';

abstract class Utils {
  static void showSnackBar(BuildContext context, String title) {
    var snackBar = SnackBar(
        content: Text(
      title,
      style: context.textTheme.bodyMedium!.copyWith(
        color: ColorName.white,
      ),
      textAlign: TextAlign.end,
    ));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
